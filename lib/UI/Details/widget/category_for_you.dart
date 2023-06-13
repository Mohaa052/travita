import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsCategory extends StatelessWidget {
  final void Function() onTap;
  final String image;
  final String text;
  const DetailsCategory({
    super.key,
    required this.onTap,
    required this.image,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 125.w,
        child: Column(
          children: [
            Container(
              height: 141.h,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Image.network(
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
      ),
    );
  }
}
