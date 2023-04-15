import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/UI/Places_of_type/cubit/states.dart';

import '../../../core/dioHelper/dioHelper.dart';
import '../Models/hotelsModel.dart';

class PlacesOfTypeController extends Cubit<PlacesOfTypeStates> {
  PlacesOfTypeController() : super(PlacesOfTypeInitialState());

  static PlacesOfTypeController get(context) => BlocProvider.of(context);

  var attractionsModel;
  HotelsModel? hotelsModel;
  var cofeModel;
  var Model;

  void getPlacesOfTypeData({
    required String url,
  }) {
    emit(PlacesOfTypeGetDataLoadingState());
    DioHelper.getData(
      url: url,
    ).then((value) {
      switch (url) {
        case "attractions":
          {}
          break;
        case "hotels":
          {
            hotelsModel = HotelsModel.fromJson(value.data);
          }
          break;
        case "restaurants":
          {}
          break;
        default:
          {}
          break;
      }
      emit(PlacesOfTypeGetDataSuccessState());
    }).catchError((error) {
      print("The error is -----------> ${error.toString()}");
      emit(PlacesOfTypeGetDataErrorState());
    });
  }
}
