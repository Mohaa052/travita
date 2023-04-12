import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Component/widgets/defaultText.dart';


class OneCategorieOfSurvey extends StatelessWidget {
  Function onTap;
  String surveyCategoriesText;
  Color oneCategoryOfSurveyColor;
  Color iconAndTextColor;

  OneCategorieOfSurvey({
    required this.onTap,
    required this.surveyCategoriesText,
    required this.oneCategoryOfSurveyColor,
    required this.iconAndTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22.r),
      onTap: () {
        onTap();
      },
      child: Container(
        //width: double.minPositive,
        //height: 44.h,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 7.h,
        ),
        decoration: BoxDecoration(
          color: oneCategoryOfSurveyColor,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.add,
              color: iconAndTextColor,
              size: 25.r,
            ),
            SizedBox(
              width: 8.w,
            ),
            DefaultText(
              text: surveyCategoriesText,
              textColor: iconAndTextColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w300,
            )
          ],
        ),
      ),
    );
  }
}
