import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/button/default_button.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/Component/widgets/textFrmField/simple%20textFiels.dart';
import 'package:travita/UI/final_plan/view.dart';
import 'package:travita/UI/google_map/view_Determine_startPosition.dart';
import 'package:travita/UI/information%20for%20the%20plan/Widget/location_button.dart';

class InformationThePlan extends StatelessWidget {
  const InformationThePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listOfInformation = ['Days', 'Budget', 'City'];
    List listOfIconInformation = [
      Icons.calendar_month_outlined,
      Icons.monetization_on_rounded,
      Icons.location_city,
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  DefaultText(
                    text: "Survey",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                    textColor: AppColors.darkBlue,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  DefaultText(
                    text:
                        " Please, fill in these required information to get the plan that best suits you.",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                    textColor: AppColors.darkGrey,
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.8,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 38.h,
                  ),
                  itemBuilder: (context, index) => SimpleTextFormFiled(
                    icon: listOfIconInformation[index],
                    type: listOfInformation[index],
                  ),
                ),
              ),
              LocationButton(
                width: 180.w,
                height: 60.h,
                icon: Icons.location_pin,
                text: "Location",
                fontSize: 25.sp,
                onTap: () {
                  defaultNavigator(context, const DetermineTheStartPosition());
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultButton(
                      onPressed: () {
                        print("object");
                        defaultNavigator(context, FinalPlanScreen());
                      },
                      width: 120.w,
                      height: 50.h,
                      backgroundColor: AppColors.darkOrange,
                      text: "Done",
                    borderRadius: 10,
                    fontSize: 18.sp,
                    textColor: AppColors.white,fontWeight: FontWeight.w600,
                    opacity: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
