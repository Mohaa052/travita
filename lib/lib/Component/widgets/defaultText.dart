import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultText extends StatelessWidget {
  String text;
  double? fontSize;
  String? fontFamily;
  double? lineHeight;
  FontWeight? fontWeight;
  Color? textColor;
  TextOverflow? textOverflow;
  int? maxLines;
  TextAlign? textAlign;

  DefaultText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.lineHeight,
    this.fontFamily,
    this.maxLines,
    this.textOverflow,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
        height: lineHeight,
        overflow: textOverflow,
        fontFamily: fontFamily,
      ),
    );
  }
}
