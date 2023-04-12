import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/category/category_of_type.dart';

class TypeOfPlace extends StatelessWidget {
  const TypeOfPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        titleSpacing: 0,
        title: Image.asset("image/appBarLogo.png",width: 100,),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Coffee Shop",
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
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.w,
                    childAspectRatio: 2.w / 2.6.h,
                  ),
                  itemBuilder: (BuildContext context, int index) => CategoryOfTypeThePlace(
                    image: "image/coffee.png",
                    description: " Sumptuous Ras el-Tin Palace was once a summer escape for Egypt's sultans when the desert heat of Cairo got too much to bear.",
                    nameOfPlace: "Ras el-Tin Palace",
                    showIcon: false,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
