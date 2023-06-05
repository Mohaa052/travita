import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/defaultText.dart';

import '../../../Component/colors/colors.dart';
import 'more_details.dart';

class Description extends StatelessWidget {
  String placeName;
  String description;
  Description({
    required this.placeName,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    List listOfDetail = [
      'Name',
      'Phone Number',
      'Email address',
      'Rating',
      'Number of Stars',
      'Location',
      'website',
    ];
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 5.h,
          ),
          width: MediaQuery.of(context).size.width / 1.3,
          height: 135.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: const [
              BoxShadow(
                color: AppColors.grey,
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(
                  0,
                  5.5,
                ),
                blurStyle: BlurStyle.normal,
              )
            ],
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: AppColors.darkBlue,
              width: .1.w,
            ),
          ),
          child: Column(
            children: [
              DefaultText(
                text: placeName,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10.h,
              ),
              DefaultText(
                text: description,
                textColor: AppColors.darkBlue,
              ),
            ],
          ),
        ),
        Positioned(
          left: 281.w,
          bottom: 10.h,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: AppColors.darkOrange,
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              radius: 14,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => SimpleDialog(
                              backgroundColor: AppColors.white,
                              children: [
                                MoreDetails(
                                  listOfDetails: listOfDetail,
                                ),
                              ]));
                },
                child: Icon(
                  Icons.expand_more,
                  color: AppColors.darkOrange,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
