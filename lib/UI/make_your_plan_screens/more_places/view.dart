import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/defaultText.dart';

import 'widget/one_place.dart';

class MorePlacesByType extends StatelessWidget {
  final String placeType;

  const MorePlacesByType({super.key, required this.placeType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Image.asset(
          "image/appBarLogo.png",
          width: 100.w,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 15.h,
            left: 15.w,
            right: 15.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefaultText(
                    text: placeType,
                    textColor: AppColors.darkBlue,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  // LocationButton(
                  //   height: 56.h,
                  //   width: 163.w,
                  //   fontSize: 25.sp,
                  //   text: "Filters",
                  //   icon: Icons.filter,
                  //   onTap: (){
                  //     defaultNavigator(context, const FiltrationScreen());
                  //   },
                  // ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              DefaultText(
                text: "500 of 600 places are avaliable, sorted by best value",
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(
                height: 10.h,
              ),
              DefaultText(
                text: "best value",
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                textColor: AppColors.darkOrange,
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    OnePlaceInMorePlaceWidget(),
                itemCount: 10,
                itemBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
