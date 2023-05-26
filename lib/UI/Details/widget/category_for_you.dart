import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsCategory extends StatelessWidget {
  String image;
  String text;
  DetailsCategory({required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125.w,
      child: Column(
        children: [
          Container(
            height: 141.h,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            text,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15.sp,
              // fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
