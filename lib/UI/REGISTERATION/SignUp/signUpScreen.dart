import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Component/colors/colors.dart';
import 'widgets/form.dart';
import 'widgets/image.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                const SignUpImage(),
                Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 30.h + 235.h - 115.h,
                    ),
                    SignUpFormWithCurve(),
                  ],
                ),
              ],
            ),
            //ImageCurveForm(),
            //SignUpForm(),
          ],
        ),
      ),
    );
  }
}
