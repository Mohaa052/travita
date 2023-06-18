import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/final_plan/veiw_final_manualPlan.dart';

import '../UI/final_plan/view_final_AI_plan.dart';
import '../UI/plan/manually.dart';

class SavedManualPlanScreen extends StatelessWidget {
  const SavedManualPlanScreen({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultText(
                text: "Your Manually Trips ",
                fontWeight: FontWeight.w600,
                fontSize: 25.sp,
                textColor: AppColors.darkBlue,
              ),
              SizedBox(height: 15.h,),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(height: 10),
                itemCount: 5,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: (){
                    defaultNavigator(context, const FinalManualPlanScreen());
                  },
                  child: Row(
                    children: [
                      Image.asset('image/alex.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      DefaultText(
                        text: "Name of Trip",
                        textColor: AppColors.darkBlue,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
