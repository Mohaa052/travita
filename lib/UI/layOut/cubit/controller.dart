import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/UI/layOut/cubit/states.dart';

import '../../Favourite/favourite.dart';
import '../../Home/view.dart';
import '../../Profile/profile.dart';
import '../../Search/search.dart';
import '../../choose_Ai_or_manual_plan/view.dart';

class LayOutController extends Cubit<LayOutStates> {
  LayOutController() : super(HomeLayOutInitialState());

  static LayOutController get(context) => BlocProvider.of(context);

  int selectedIndex = 2;

  void changeBottomNav({
    required int index,
  }) {
    selectedIndex = index;
    emit(ChangBottomNavState());
  }

  List<Widget> screens = [
    SearchScreen(),
    ChooseAiOrManualPlanScreen(),
    HomeScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];
}
