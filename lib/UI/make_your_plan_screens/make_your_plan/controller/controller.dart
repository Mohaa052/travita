import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/UI/make_your_plan_screens/make_your_plan/controller/states.dart';
import 'package:travita/core/database/remote/dioHelper/dioHelper.dart';
import 'package:travita/core/database/remote/dioHelper/endpoints.dart';

class MakeYourPlanController extends Cubit<MakeYourPlanStates> {
  MakeYourPlanController() : super(MakeYourPlanInitial());
  static MakeYourPlanController get(context) => BlocProvider.of(context);
  late final List<String> placesTypes = [
    "Attractions",
    "Hotels",
    "Restaurants",
  ];

}
