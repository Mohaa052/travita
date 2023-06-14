import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rate/rate.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/defaultText.dart';

import '../../Details/widget/show_model_sheet/showModelSheets.dart';

class OnePlaceInMorePlace extends StatelessWidget {
  const OnePlaceInMorePlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              width: 183.w,
              height: 146.h,
              child: Image.network('https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium'),
            ),
          ],
        ),
        SizedBox(width: 22.w,),
        SizedBox(
          height: 166.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  DefaultText(text: "Name of place",fontWeight: FontWeight.w600,fontSize: 16.sp,textColor:AppColors.darkBlue,),
                SizedBox(width: 50.w,),
                  SizedBox(
                  width: 21.w,
                  height: 22.h,
                  child: GestureDetector(
                      onTap: (){
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return const ShowModelSheet();
                          },
                        );
                      },
                      child: Image.asset('image/addToPlan.png')),
                ),
                ],
              ),
              SizedBox(height: 3.h,),
              DefaultText(text: "Address of place ",fontWeight: FontWeight.w300,fontSize: 12.sp,textColor:AppColors.grey,),
              SizedBox(height: 14.h,),
              const Rate(
                color: AppColors.darkOrange,
                initialValue: 3,
                readOnly: true,
              ),
              SizedBox(height: 10.h,),

            ],
          ),
        ),
      ],
    );
  }
}
