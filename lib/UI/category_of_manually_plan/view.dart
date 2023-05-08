import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/more_places/view.dart';

import '../../Component/colors/colors.dart';
import '../../Component/navigator.dart';
import '../../Component/widgets/defaultText.dart';
import '../type_of_place/view.dart';

class YourPlanScreen extends StatelessWidget {
  const YourPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Image.asset(
          "image/appBarLogo.png",
          width: 100,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 32,
          bottom: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DefaultText(
                text: "Make your own plan",
                fontWeight: FontWeight.w700,
                fontSize: 32.sp,
                textColor: AppColors.darkBlue,
              ),
              SizedBox(
                height: 8.h,
              ),
              DefaultText(
                text:
                    "Choose the suitable places for your trip through the classifications, and we will calculate the full budget required for your trip.",
                fontWeight: FontWeight.w300,
                fontSize: 16.sp,
                textColor: AppColors.black,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24.h,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(
                  height: 25.h,
                ),
                itemCount: 3,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        defaultNavigator(context, MorePlacesByType());
                      },
                      child: DefaultText(
                        text: "Attraction activities",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,
                        textColor: AppColors.darkBlue,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 185.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 20,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) => Container(
                            width: 275.w,
                            height: 183.h,
                            child: Stack(
                              children: [
                                Image.asset(
                                  "image/casel.png",
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  bottom: 8.h,
                                  left: 7.h,
                                  child: DefaultText(
                                    text: "Qaitbay Citadel",
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.white,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
