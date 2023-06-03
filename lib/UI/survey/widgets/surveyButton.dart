import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rate/rate.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/UI/survey/controller/controller.dart';

import '../../../Component/widgets/defaultText.dart';

class OneCategoryOfSurvey extends StatelessWidget {
  late final String nameOfCategory;
  late final String image;
  late final String imageId;
  late final int index;

  OneCategoryOfSurvey({
    required this.nameOfCategory,
    required this.image,
    required this.imageId,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 167.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
            height: double.infinity,
            width: 180.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DefaultText(
                  text: nameOfCategory,
                  fontWeight: FontWeight.w600,
                  //textOverflow: TextOverflow.ellipsis,
                  fontSize: 20,
                ),
                Rate(
                  color: AppColors.darkOrange,
                  iconSize: 30,
                  // readOnly: true,
                  onChange: (value) {
                    SurveyController.get(context).sendRate(
                      imageId: imageId,
                      rate: value.toInt().toString(),
                      index: index,
                    );
                    print(value);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
