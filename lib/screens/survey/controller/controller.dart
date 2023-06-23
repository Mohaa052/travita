import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/screens/survey/controller/states.dart';
import 'package:travita/screens/survey/model.dart';
import 'package:travita/core/database/remote/dioHelper/dioHelper.dart';

class SurveyController extends Cubit<SurveyStates> {
  SurveyController() : super(SurveyInitialState());

  static SurveyController get(context) => BlocProvider.of(context);

  SurveyModel? surveyModel;

  void getSurvey() {
    emit(GetSurveyLoading());
    DioHelper.getSurveyData().then((value) {
      surveyModel = SurveyModel.formJson(value.data);
      emit(GetSurveySuccess());
    }).catchError((error) {
      print("The error is -------------------> ${error}");
      emit(GetSurveyError());
    });
  }

  void sendRate({
    required String imageId,
    required String rate,
    required int index,
  }) {
    emit(SendSurveyRateLoading());

    DioHelper.sendSurveyRate(imageId: imageId, rate: rate).then((value) {
      emit(SendSurveyRateSuccess());
    }).catchError((error) {
      emit(SendSurveyRateError());

      print("The error is -------------------> ${error}");
    });
  }
}
