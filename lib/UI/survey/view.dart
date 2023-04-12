import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/button/DefaultOutlindedButton.dart';
import 'package:travita/UI/survey/controller.dart';

import '../../Component/colors/colors.dart';
import '../../Component/widgets/defaultText.dart';
import 'widgets/surveyButton.dart';



class SurveyScreen extends StatefulWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 56.h,
            right: 33.w,
            left: 33.w,
            bottom: 56.h,
          ),
          child: Column(
            children: [
              DefaultText(
                text: "Survey",
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.blue,
              ),
              SizedBox(
                height: 16.h,
              ),
              DefaultText(
                text: "First, choose your interests to get a better experience",
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
              ),
              Expanded(
                //height: 500.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                  ),
                  child: ListView(
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center,
                        //runAlignment: WrapAlignment.spaceBetween,
                        spacing: 15.w,
                        runSpacing: 28.h,
                        children: List.generate(
                            30,
                            (index) => OneCategorieOfSurvey(
                                  onTap: () {
                                    SurveyController.isCategoryChoosed[index] =
                                        !SurveyController
                                            .isCategoryChoosed[index];
                                    setState(() {});
                                  },
                                  surveyCategoriesText: "Diving",
                                  oneCategoryOfSurveyColor:
                                      SurveyController.isCategoryChoosed[index]
                                          ? AppColors.darkOrange
                                          : AppColors.ofWhite,
                                  iconAndTextColor:
                                      SurveyController.isCategoryChoosed[index]
                                          ? AppColors.white
                                          : AppColors.black,
                                )),
                      ),
                    ],
                  ),
                ),
              ),
              DefaultOutlindedButton(
                onPressed: () {},
                width: 145.w,
                height: 38.h,
                backgroundColor: AppColors.darkOrange,
                text: "Continue",
                textColor: AppColors.white,
                elevation: 7.r,
                fontWeight: FontWeight.w600,
                fontSize: 25.sp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
