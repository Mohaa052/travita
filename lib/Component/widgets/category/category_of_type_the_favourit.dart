import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rate/rate.dart';

import '../../colors/colors.dart';
import '../../../UI/Details/view.dart';
import '../defaultText.dart';

class CategoryOfTypeTheFavourite extends StatelessWidget {
  late final String image;
  late final String nameOfPlace;
  late final String description;
  late final int id;
  late final String subType;
  double? rate;

  CategoryOfTypeTheFavourite({
    required this.image,
    required this.nameOfPlace,
    required this.description,
    this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              image: image,
              name: nameOfPlace,
              description: description,
            ),
          ),
        );
      },
      icon: Container(
        width: 180.w,
        height: 167.h,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
      label: SizedBox(
        width: MediaQuery.of(context).size.width / 2.1,
        height: 165.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DefaultText(
              text: nameOfPlace,
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              textColor: AppColors.darkBlue,
            ),
            SizedBox(height: 4.h),
            DefaultText(
              text: description,
              fontSize: 18.sp,
              fontWeight: FontWeight.w300,
              textColor: AppColors.darkGrey,
              maxLines: 4,
              textOverflow: TextOverflow.ellipsis,
            ),
            Rate(
              iconSize: 25,
              color: AppColors.darkOrange,
              allowHalf: false,
              allowClear: true,
              initialValue: rate!,
              readOnly: true,
              // onChange: (value) => print(value),
            ),
          ],
        ),
      ),
    );
  }
}
