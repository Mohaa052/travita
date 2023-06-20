import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/button/default_button.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/final_plan/view.dart';
import 'package:travita/UI/google_map/view_Determine_startPosition.dart';
import 'package:travita/UI/information%20for%20the%20plan/Widget/location_button.dart';
import 'package:travita/UI/information%20for%20the%20plan/controller/states.dart';
import 'package:travita/core/app_controller/appController.dart';

import 'Widget/form.dart';
import 'controller/controller.dart';

class InformationThePlan extends StatelessWidget {
  const InformationThePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AIPlanSurveyController>(
      create: (context) => AIPlanSurveyController(),
      child: BlocConsumer<AIPlanSurveyController, AIPlanSurveyStates>(
        buildWhen: (previousState, currentState) => false,
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            titleSpacing: 0,
            title: Image.asset(
              "image/appBarLogo.png",
              width: 100.w,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(
              left: 32.r,
              right: 32.r,
              top: 10.r,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: DefaultText(
                      text: "Survey",
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                      textColor: AppColors.darkBlue,
                    ),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: DefaultText(
                      text:
                          " Please, fill in these required information to get the plan that best suits you.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                      textColor: AppColors.darkGrey,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  const AIPlanInformationForm(),
                  LocationButton(
                    width: 180.w,
                    height: 60.h,
                    icon: Icons.location_pin,
                    text: "Location",
                    fontSize: 25.sp,
                    onTap: () {
                      defaultNavigator(
                          context, const DetermineTheStartPosition());
                    },
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: DefaultButton(
                      onPressed: () {
                        AIPlanSurveyController.get(context).createAiPlan(
                          latitude: AppController.get(context).latitude,
                          longitude: AppController.get(context).longitude,
                        );
                        //print("object");
                        //defaultNavigator(context, const FinalPlanScreen());
                      },
                      width: 120.w,
                      height: 50.h,
                      backgroundColor: AppColors.darkOrange,
                      text: "Done",
                      borderRadius: 10,
                      fontSize: 18.sp,
                      textColor: AppColors.white,
                      fontWeight: FontWeight.w600,
                      opacity: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
