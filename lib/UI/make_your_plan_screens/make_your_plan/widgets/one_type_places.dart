import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/make_your_plan_screens/make_your_plan/widgets/view_more_button.dart';

import '../../../../Component/colors/colors.dart';
import '../../../../Component/navigator.dart';
import 'one_place_make_plan.dart';

class OneTypeOfPlacesWidget extends StatelessWidget {
  final String placeType;
  final Function() onTap;

  const OneTypeOfPlacesWidget({
    super.key,
    required this.placeType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultText(
          text: placeType,
          fontSize: 25.sp,
          fontWeight: FontWeight.w600,
          textColor: AppColors.darkBlue,
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 185.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemCount: 4,
            itemBuilder: (context, index) => OnePlaceMakeYourPlanWidget(),
          ),
        ),
        ViewMoreButtonWidget(onTap: onTap,),
      ],
    );
  }
}
