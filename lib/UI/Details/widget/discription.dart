import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Component/colors/colors.dart';

class Description extends StatelessWidget {
  String placeName;
  String description;
  Description({required this.placeName,required this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 5.h,
      ),
      width: MediaQuery.of(context).size.width / 1.3,
      height: 135.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
              color: AppColors.grey,
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 5.5,),
              blurStyle: BlurStyle.normal
          )
        ],
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: AppColors.darkBlue,
          width: .1.w,
        ),
      ),
      child: Column(
        children: [
          Text(
            placeName,
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(description,
            style: TextStyle(
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
