import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/button/default_button.dart';
import 'package:travita/Component/widgets/defaultText.dart';

import '../../Component/widgets/category/category_of_type_the_favourit.dart';
import '../filtration/view.dart';

class MorePlacesByType extends StatelessWidget {
  const MorePlacesByType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Image.asset(
          "image/appBarLogo.png",
          width: 100.w,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DefaultButton(
                    onPressed: () {},
                    width: 122.w,
                    height: 56.h,
                    backgroundColor: AppColors.white,
                    text: "Map",
                    textColor: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 25.sp,
                    opacity: 1,
                    borderRadius: 20,
                    //borderColor: AppColors.black,
                  ),
                  DefaultButton(
                    onPressed: () {},
                    width: 169.w,
                    height: 56.h,
                    backgroundColor: AppColors.white,
                    text: "Apr 12 -> 16",
                    textColor: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                    opacity: 1,
                    borderRadius: 20,
                    //borderColor: AppColors.black,
                  ),
                  DefaultButton(
                    onPressed: () {
                      defaultNavigator(context, Filtration());
                    },
                    width: 91.w,
                    height: 56.h,
                    backgroundColor: AppColors.white,
                    text: "2",
                    textColor: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                    opacity: 1,
                    borderRadius: 20,
                    //borderColor: AppColors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              DefaultText(
                text: "Hotels",
                textColor: AppColors.darkBlue,
                fontSize: 32.sp,
                fontWeight: FontWeight.w600,
              ),
              DefaultText(
                text: "500 of 600 places are avaliable, sorted by best value",
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(
                height: 10.h,
              ),
              DefaultText(
                text: "best value",
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                textColor: AppColors.darkOrange,
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => Divider(
                  height: 15,
                  thickness: .6,
                  color: AppColors.darkBlue,
                ),
                itemCount: 10,
                itemBuilder: (context, index) => CategoryOfTypeTheFavourite(
                  image: 'image/casel.png',
                  description:
                      "We love Landingfolio! Our designers were using it for their projects ",
                  nameOfPlace: "Fort Qaitbey",
                  rate: 4,
                  /*onTap: (){
                  },*/
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
