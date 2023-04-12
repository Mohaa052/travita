// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/lib/Component/widgets/defaultText.dart';

import '../../colors/colors.dart';
import '../../../UI/Details/details.dart';

class CategoryOfTypeTheFavourite extends StatefulWidget {
  String image;
  String nameOfPlace;
  String description;
  double? rate;
  CategoryOfTypeTheFavourite({
    required this.image,
    required this.nameOfPlace,
    required this.description,
    this.rate,
  });

  @override
  State<CategoryOfTypeTheFavourite> createState() =>
      _CategoryOfTypeTheFavourite();
}

class _CategoryOfTypeTheFavourite extends State<CategoryOfTypeTheFavourite> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Details()),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 180.w,
            height: 167.h,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20.w),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.1,
            height: 165.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DefaultText(
                  text: widget.nameOfPlace,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  textColor: AppColors.darkBlue,
                ),
                SizedBox(height: 4.h),
                DefaultText(
                  text: widget.description,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w300,
                  textColor: AppColors.darkGrey,
                  maxLines: 4,
                  textOverflow: TextOverflow.ellipsis,
                ),
                /*Rate(
                  iconSize: 25,
                  color: AppColors.darkOrange,
                  allowHalf: false,
                  allowClear: true,
                  initialValue: widget.rate!,
                  readOnly: true,
                  // onChange: (value) => print(value),
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
