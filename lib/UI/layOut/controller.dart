import 'package:flutter/material.dart';

import '../Favourite/favourite.dart';
import '../Home/view.dart';
import '../Profile/profile.dart';
import '../Search/search.dart';
import '../choose_Ai_or_manual_plan/view.dart';

class LayOutController {
  int selectedIndex = 2;

  List<Widget> screens = [
    const SearchScreen(),
    const ChooseAiOrManualPlanScreen(),
    HomeScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
}
