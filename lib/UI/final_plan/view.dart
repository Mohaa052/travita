import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/final_plan/widgets/category%20of%20plan.dart';

class FinalPlanScreen extends StatelessWidget {
  const FinalPlanScreen({Key? key}) : super(key: key);

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
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: 'Day $index',
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      textColor: AppColors.darkBlue,
                    ),
                    const CategoryOfOnePlaceInFinalPlan(),
                    const Divider(
                      color: AppColors.darkBlue,
                      thickness: .5,
                    )
                  ],
                ),
                separatorBuilder: (context, index) => SizedBox(height: 20.h),
                itemCount: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
