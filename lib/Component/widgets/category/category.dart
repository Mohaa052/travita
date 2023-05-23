import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors/colors.dart';
import '../../../UI/Details/view.dart';
import '../defaultText.dart';

class Category extends StatelessWidget {
  late final String? image;
  late final String nameOfPlace;
  late final String description;
  Category({
    required this.image,
    required this.nameOfPlace,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    image: image,
                    name: nameOfPlace,
                    description: description,
                  )),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 175.w,
            height: 130.h,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: image != null
                ? Image.network(
                    image!,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    "image/coffee.png",
                  ),
          ),
          SizedBox(
            height: 10.h,
          ),
          DefaultText(
            text: nameOfPlace,
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            textColor: AppColors.darkBlue,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 4.h,
          ),
          DefaultText(
            text: description,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            textColor: AppColors.darkGrey,
            maxLines: 3,
            textOverflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
