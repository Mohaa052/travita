import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/button/default_button.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/final_plan/widgets/category%20of%20plan.dart';
import 'package:travita/UI/information%20for%20the%20plan/Widget/location_button.dart';
import 'package:travita/UI/more_places/widget/one%20place%20in%20more%20places.dart';
import '../filtration/view.dart';

class MorePlacesByType extends StatelessWidget {
  const MorePlacesByType({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.only(top: 15, left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefaultText(
                    text: "Hotels",
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
              SizedBox(height: 5.h,),
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
                separatorBuilder: (context, index) => const Column(
                  children: [
                    OnePlaceInMorePlace(),
                    Divider(
                      height: 0,
                      color: AppColors.darkBlue,
                      thickness: .5,
                    ),
                  ],
                ),
                itemCount: 10,
                itemBuilder: (context, index) =>  SizedBox(height: 10.h,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
