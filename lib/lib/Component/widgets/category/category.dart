import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/lib/Component/widgets/defaultText.dart';

import '../../colors/colors.dart';
import '../../../UI/Details/details.dart';

class Category extends StatelessWidget {
  String? image;
  String nameOfPlace;
  String description;
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
          MaterialPageRoute(builder: (context) => const Details()),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 175.w,
            height: 130.h,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
            child: Image.network(
              image!,
              fit: BoxFit.cover,
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
          ),
        ],
      ),
    );
  }
}
