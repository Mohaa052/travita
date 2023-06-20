import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Component/colors/colors.dart';
import '../../../../Component/widgets/defaultText.dart';


class OnePlaceMakeYourPlanWidget extends StatelessWidget {
  const OnePlaceMakeYourPlanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275.w,
      height: 183.h,
      child: Stack(
        children: [
          Image.asset(
            "image/casel.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 8.h,
            left: 7.h,
            child: DefaultText(
              text: "Qaitbay Citadel",
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
              textColor: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
