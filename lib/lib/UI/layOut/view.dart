import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Component/colors/colors.dart';
import '../Favourite/favourite.dart';
import '../Home/view.dart';
import '../Profile/profile.dart';
import 'controller.dart';

class LayOutScreen extends StatefulWidget {
  const LayOutScreen({Key? key}) : super(key: key);

  @override
  State<LayOutScreen> createState() => _LayOutScreenState();
}

class _LayOutScreenState extends State<LayOutScreen> {
  var controller = LayOutController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: controller.screens[controller.selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            Icons.search,
            size: 30.r,
            color: AppColors.white,
          ),
          Icon(
            Icons.pending_actions_rounded,
            size: 30.r,
            color: AppColors.white,
          ),
          Icon(
            Icons.home,
            size: 30.r,
            color: AppColors.white,
          ),
          Icon(
            Icons.favorite,
            size: 30.r,
            color: AppColors.white,
          ),
          Icon(
            Icons.person,
            size: 30.r,
            color: AppColors.white,
          ),
        ],
        onTap: (int index) {
          setState(() {
            controller.selectedIndex = index;
          });
        },
        height: 60.h,
        color: AppColors.darkBlue,
        buttonBackgroundColor: AppColors.darkOrange,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        letIndexChange: (index) => true,
      ),
    );
  }
}
