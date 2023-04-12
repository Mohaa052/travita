import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/lib/UI/onBoarding/controller.dart';

import '../../Component/colors/colors.dart';
import '../../Component/widgets/defaultText.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 35.w,
          ),
          child: Column(
            children: [
              const Spacer(
                flex: 4,
              ),
              SizedBox(
                height: 280.h,
                child: PageView(
                  onPageChanged: (index) {
                    controller.currentIndex = index;
                    setState(() {});
                  },
                  //scrollDirection: Axis.horizontal,
                  children: List.generate(
                    controller.images.length,
                    (index) => Image.asset(
                      controller.images[controller.currentIndex],
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              DefaultText(
                text: controller.texts[controller.currentIndex],
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.white,
              ),
              const Spacer(
                flex: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.images.length,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.w,
                    ),
                    child: CircleAvatar(
                      radius: controller.currentIndex == index ? 10.r : 8.r,
                      backgroundColor: controller.currentIndex == index
                          ? AppColors.darkOrange
                          : AppColors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
