import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rate/rate.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/defaultText.dart';

class CategoryOfOnePlaceInFinalPlan extends StatelessWidget {
  const CategoryOfOnePlaceInFinalPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 179.w,
          height: 167.h,
          child: Image.network('https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium'),
        ),
        SizedBox(width: 27.w,),
        SizedBox(
          height: 166.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultText(text: "Name of place",fontWeight: FontWeight.w600,fontSize: 16.sp,textColor:AppColors.darkBlue,),
             SizedBox(height: 3.h,),
              DefaultText(text: "Address of place ",fontWeight: FontWeight.w300,fontSize: 12.sp,textColor:AppColors.grey,),
              SizedBox(height: 14.h,),
              Rate(
                color: AppColors.darkOrange,
                initialValue: 3,
                readOnly: true,
              ),
              SizedBox(height: 10.h,),
              SizedBox(
                width: 160.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        print("object");
                      },
                        child: Icon(Icons.edit_outlined,color: Colors.green,),),
                    GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.delete,color: AppColors.darkOrange,))
                   //  IconButton(onPressed: (){}, icon: Icon(Icons.find_replace,color: AppColors.darkOrange,)),
                   // // SizedBox(width: 20.w,),
                   //  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: AppColors.darkOrange,)),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
