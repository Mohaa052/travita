import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/button/default_button.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/Component/widgets/textFrmField/simple%20textFiels.dart';
import 'package:travita/UI/google_map/view_googleMap.dart';

import '../../google_map/view_Determine_startPosition.dart';

class LocationButton extends StatelessWidget {
  IconData? icon;
  String? text;
  double? width;
  double? height;
  double? fontSize;
  Color ? color=Colors.transparent;
  Function? onTap;
  LocationButton({super.key,
    this.icon,
    this.text,
    this.width,
    this.height,
    this.fontSize,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
            color:color,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 10.w,
              ),
              Icon(icon),
              SizedBox(
                width: 13.w,
              ),
              DefaultText(
                text: text!,
                fontWeight: FontWeight.w600,
                fontSize: fontSize!,
              ),
            ],
          )),
    );
  }
}
