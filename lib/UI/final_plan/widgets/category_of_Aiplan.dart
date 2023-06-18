import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rate/rate.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/information%20for%20the%20plan/Widget/location_button.dart';

class CategoryOfOnePlaceInFinalAIPlan extends StatelessWidget {
  const CategoryOfOnePlaceInFinalAIPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              width: 179.w,
              height: 167.h,
              child: Image.network(
                  'https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium'),
            ),
            LocationButton(
              width: 189.w,
              height: 32.h,
              icon: Icons.restaurant,
              text: "Nearest restaurant",
              fontSize: 16.sp,
              color: AppColors.ofWhite,
              onTap: () {},
              iconSize: 15,
            ),
          ],
        ),
        SizedBox(
          width: 27.w,
        ),
        Expanded(
          child: SizedBox(
            height: 166.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultText(
                  text: "Name of place",
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  textColor: AppColors.darkBlue,
                ),
                SizedBox(
                  height: 3.h,
                ),
                DefaultText(
                  text: "Address of  place ",
                  fontWeight: FontWeight.w300,
                  fontSize: 12.sp,
                  textColor: AppColors.darkGrey,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 14.h,
                ),
                const Rate(
                  iconSize: 20,
                  color: AppColors.darkOrange,
                  initialValue: 3,
                  readOnly: true,
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 140.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.edit_outlined,
                          color: AppColors.darkBlue,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: 32.w,
                            height: 32.h,
                            child: Image.asset("image/delete.png"),
                          ))
                      //  IconButton(onPressed: (){}, icon: Icon(Icons.find_replace,color: AppColors.darkOrange,)),
                      // // SizedBox(width: 20.w,),
                      //  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: AppColors.darkOrange,)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
