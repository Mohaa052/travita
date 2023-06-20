import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/UI/make_your_plan_screens/more_places/controller/states.dart';

import '../../../../core/database/remote/dioHelper/dioHelper.dart';
import '../../../../core/database/remote/dioHelper/endpoints.dart';

class MorePlacesController extends Cubit<MorePlaces> {
  MorePlacesController() : super(MorePlacesInitial());
  static MorePlacesController get(context) => MorePlacesController();

  void createTrip({
    required String tripName,
  }) {
    emit(CreateTripeLoading());
    DioHelper.createManualTrip(
      endPoint: TRIP,
      tripName: tripName,
    ).then((value) {
      emit(CreateTripeSuccess());
    }).catchError((error) {
      emit(CreateTripeError());
    });
  }

  void putPlaceInTrip({
    required String tripId,
    required String placeId,
    required String placeType,
  }) {
    emit(PutPlacesInTripLoading());
    DioHelper.putPlacesInTrip(
      tripId: tripId,
      placeId: placeId,
      placeType: placeType,
      endPoint: TRIP,
    ).then((value) {
      emit(PutPlacesInTripSuccess());
    }).catchError((error) {
      emit(PutPlacesInTripError());
    });
  }

  void getAllTrips() {
    emit(GetTripsLoading());
    DioHelper.getTrips(endPoint: TRIP).then((value) {
      emit(GetTripsSuccess());
    }).catchError((error) {
      emit(GetTripsError());
    });
  }
}
