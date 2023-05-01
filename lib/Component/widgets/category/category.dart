import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors/colors.dart';
import '../../../UI/Details/details.dart';
import '../defaultText.dart';

class Category extends StatelessWidget {
  late final String? image;
  late final String nameOfPlace;
  late final String description;
  //late  bool isFavorite;
  Category({
    required this.image,
    required this.nameOfPlace,
    required this.description,
    //required this.isFavorite,
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: image != null
                ? Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.network(
                        image!,
                        fit: BoxFit.cover,
                      ),
                      Icon(
                        Icons.favorite_border,
                      ),
                    ],
                  )
                : Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset(
                        "image/coffee.png",
                      ),
                      Padding(
                        padding: EdgeInsets.all(7.0.r),
                        child: Icon(
                          Icons.favorite,
                        ),
                      ),
                    ],
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
