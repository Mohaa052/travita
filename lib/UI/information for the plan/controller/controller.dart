import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/UI/information%20for%20the%20plan/controller/states.dart';
import 'package:travita/core/app_constants/constants.dart';
import 'package:travita/core/database/remote/dioHelper/dioHelper.dart';

class AIPlanSurveyController extends Cubit<AIPlanSurveyStates> {
  AIPlanSurveyController() : super(AIPlanInitial());
  static AIPlanSurveyController get(context) => BlocProvider.of(context);

  late final List<String> listOfInformation = ['Days', 'Budget', 'City'];
  late final List listOfIconInformation = [
    Icons.calendar_month_outlined,
    Icons.monetization_on_rounded,
    Icons.location_city,
  ];
  late final TextEditingController daysController = TextEditingController();
  late final TextEditingController budgetController = TextEditingController();
  late final TextEditingController cityController = TextEditingController();
  late final List<TextEditingController> textControllers = [
    daysController,
    budgetController,
    cityController,
  ];
  late final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final double longitude;
  late final double latitude;

  void createAiPlan({
    required double longitude,
    required double latitude,
}) {
    if (formKey.currentState!.validate()) {
      emit(CreateAIPlanLoading());
      DioHelper.postData(
        url: "plan",
        baseUrl: AppConstants.baseUrl,
        data: {
          "city": cityController.text,
          "days": daysController.text,
          "price": budgetController.text,
          "longitude": longitude,
          "latitude": latitude,
        },
      ).then((value) {
        emit(CreateAIPlanSuccess());
      }).catchError((error) {
        print("create error is -------------> $error");
        emit(CreateAIPlanError());
      });
    }
  }
}
