import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/save_plans/view_save_AI_planScreen.dart';

import '../view_save_manualy_planScreen.dart';

class SavedAiPlan extends StatelessWidget {
  const SavedAiPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        defaultNavigator(context, const SaveAiPlanScreen());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://images.squarespace-cdn.com/content/v1/5e59eefe0e4624584d852c64/62ac39ba-ebdb-4ea8-9d1e-d8770673c0b2/DALL%C2%B7E+2023-02-15+13.24.10+-+An+image+of+a+robot+creating+a+kanban+board+on+a+whiteboard+in+pixel+art+format.png?format=1000w'
            ,width: 150,height: 150,
          ),
          SizedBox(height: 10.h,),
          DefaultText(text: "Saved Ai plans",fontWeight: FontWeight.w600,fontSize: 20.sp,textColor: AppColors.darkBlue,),
        ],
      ),
    );
  }
}

class SavedManualPlan extends StatelessWidget {
  const SavedManualPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        defaultNavigator(context, const SavedManualPlanScreen());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://img.freepik.com/premium-vector/user-manual-concept-business-guidebooks-instruction-workbook-plan-project-people-looking-documentation-management-reference-recent-vector-concept_543062-4060.jpg?w=2000'
            ,width: 150,height:  150,
          ),
          SizedBox(height: 10.h,),
          DefaultText(text: "Saved manual plans",fontWeight: FontWeight.w600,fontSize: 20.sp,textColor: AppColors.darkBlue,),
        ],
      ),
    );
  }
}
