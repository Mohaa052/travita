import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/defaultText.dart';

class DefaultOutlindedButton extends StatelessWidget {
  Function onPressed;
  double width;
  double height;
  Color backgroundColor;

  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? textColor;
  double? elevation;

  DefaultOutlindedButton({
    required this.onPressed,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onPressed();
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.darkBlue,
        side: const BorderSide(
          style: BorderStyle.none,
        ),
        fixedSize: Size(width, height),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.r),
        ),
        elevation: elevation,
      ),
      child: DefaultText(
        text: text,
        fontWeight: fontWeight,
        fontSize: fontSize,
        textColor: textColor,
      ),
    );
  }
}
