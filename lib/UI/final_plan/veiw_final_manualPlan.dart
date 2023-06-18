import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/final_plan/widgets/category_of_Aiplan.dart';

class FinalManualPlanScreen extends StatelessWidget {
  const FinalManualPlanScreen({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DefaultText(
                text: "Your Manually Trips ",
                fontWeight: FontWeight.w600,
                fontSize: 25.sp,
                textColor: AppColors.darkBlue,
              ),
              SizedBox(height: 20.h,),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                separatorBuilder: (context,index)=>SizedBox(height: 15.h,),
                itemBuilder: (context,index)=>const CategoryOfOnePlaceInFinalAIPlan(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
