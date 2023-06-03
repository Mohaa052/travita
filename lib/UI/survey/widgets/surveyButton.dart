import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rate/rate.dart';
import 'package:travita/Component/colors/colors.dart';
import '../../../Component/widgets/defaultText.dart';


class OneCategoryOfSurvey extends StatelessWidget {
  late String nameOfCategory;
  late String image ;

  OneCategoryOfSurvey({required this.nameOfCategory, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      SizedBox(
          width: 180.w,
          height: 167.h,
          child: Image.network(image),
      ),
        SizedBox(
          height: 100.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultText(
                text: nameOfCategory,
              fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              Rate(
                 color: AppColors.darkOrange,
                iconSize: 30,
                // readOnly: true,
                onChange: (val){
                   print(val);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
