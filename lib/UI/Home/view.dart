import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/Places_of_type/places_of_type.dart';

import '../../Component/colors/colors.dart';
import '../../Component/widgets/button/default_button.dart';
import '../../Component/widgets/category/category.dart';
import 'controller.dart';
import 'testingModel.dart';

class HomeScreen extends StatelessWidget {
  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Image.asset(
                    'image/search.png',
                    fit: BoxFit.cover,
                  ),
                ),
                DefaultButton(
                  onPressed: () {},
                  width: 184,
                  height: 54,
                  backgroundColor: AppColors.darkOrange,
                  text: "Where to ? ",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.white,
                  opacity: .8,
                  borderRadius: 20,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.6.w,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                controller.titleIndex = index;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PlacesOfType(
                                      controller: controller,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                "${HomeController().vector[index]}",
                              ),
                            ),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 30,
                            ),
                            itemCount: HomeController().vector.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Divider(
                    height: 2.h,
                    color: AppColors.grey,
                    endIndent: 30.w,
                    indent: 30.w,
                    thickness: 5.h,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  DefaultText(
                    text: "Recommended Places",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    textColor: AppColors.darkBlue,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  FutureBuilder(
                    future: controller.getData(),
                    builder: (context, AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.data == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        var model = snapshot.data as TestingApiModel;
                        return GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10.h,
                            crossAxisSpacing: 10.w,
                            childAspectRatio: 2.w / 2.6.h,
                          ),
                          itemBuilder: (context, index) => Category(
                            nameOfPlace: model.data[index].name,
                            image: model.data[index].image,
                            description: model.data[index].address,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
