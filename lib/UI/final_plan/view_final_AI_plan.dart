import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/final_plan/widgets/category_of_Aiplan.dart';

import '../../Component/navigator.dart';
import '../../Component/widgets/button/default_button.dart';

class FinalAilPlanScreen extends StatelessWidget {
  const FinalAilPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0,
        title: Image.asset(
          "image/appBarLogo.png",
          width: 100.w,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// image
              SizedBox(
                width: 364.w,
                height: 242.h,
                child: Image.asset("image/plan.png"),
              ),
              SizedBox(
                height: 16.h,
              ),
              /// text
              DefaultText(
                text:
                    "Based on your interests and budget, we offer you this plan, knowing that you can modify them ",
                fontWeight: FontWeight.w300,
                fontSize: 12.sp,
                textColor: AppColors.darkBlue,
              ),
              /// plan
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 20.h),
                itemCount: 3,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: 'Day $index',
                      fontWeight: FontWeight.w600,
                      fontSize: 32.sp,
                      textColor: AppColors.darkBlue,
                    ),
                    const CategoryOfOnePlaceInFinalAIPlan(),
                    const Divider(
                      color: AppColors.darkBlue,
                      thickness: .5,
                    )
                  ],
                ),

              ),
              DefaultButton(
                onPressed: () {
                  // defaultNavigator(context, const FinalPlanScreen());
                },
                width: 185.w,
                height: 47.h,
                backgroundColor: AppColors.darkOrange,
                text: "Save Plane",
                borderRadius: 5,
                fontSize: 20.sp,
                textColor: AppColors.white,
                fontWeight: FontWeight.w600,
                opacity: 1,
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
