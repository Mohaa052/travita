import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Home/controller.dart';

import '../../Component/colors/colors.dart';
import '../../Component/widgets/category/category.dart';

class PlacesOfType extends StatelessWidget {
  late final HomeController controller;

  PlacesOfType({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Image.asset(
          "image/appBarLogo.png",
          width: 100,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.titles[controller.titleIndex],
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.w,
                    childAspectRatio: 2.w / 2.6.h,
                  ),
                  itemBuilder: (BuildContext context, int index) => Category(
                        image: "image/coffee.png",
                        description:
                            " Sumptuous Ras el-Tin Palace was once a summer escape for Egypt's sultans when the desert heat of Cairo got too much to bear.",
                        nameOfPlace: "Ras el-Tin Palace",
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
