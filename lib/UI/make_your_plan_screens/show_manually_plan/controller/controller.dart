import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/UI/make_your_plan_screens/show_manually_plan/controller/states.dart';

class ShowManualPlanController extends Cubit<ShowTripStates> {
  ShowManualPlanController() : super(ShowTripInitial());
  static ShowManualPlanController get(context) => ShowManualPlanController();

  void getTripPlaces() {}

}
