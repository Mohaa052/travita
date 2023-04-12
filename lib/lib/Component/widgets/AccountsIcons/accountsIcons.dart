import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors/colors.dart';

class AccountsIcons extends StatelessWidget {
  String? connect;
  AccountsIcons(this.connect);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Or ${connect} with",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                "image/facebook.png",
                color: Colors.white,
                width: 50.w,
                height: 50.h,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "image/gmail.png",
                width: 50.w,
                height: 50.h,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "image/twitter.png",
                width: 50.w,
                height: 50.h,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
