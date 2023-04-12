import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors/colors.dart';

class DefaultButton extends StatelessWidget {
  Function? onPressed;
  double width;
  double height;
  Color backgroundColor;
  String text;
  double? fontSize;
  double? opacity ;
  double? borderRadius ;
  FontWeight? fontWeight;
  Color? textColor;
  DefaultButton({
    required this.onPressed,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.text,
    this.fontSize,
    this.opacity,
    this.borderRadius,
    this.fontWeight,
    this.textColor,
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){

      },
      child: Container(
        width: width.w,
        height: height.h,
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(opacity!),
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Center(
          child: Text(text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
