import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/lib/UI/Details/widget/category_for_you.dart';
import 'package:travita/lib/UI/Details/widget/comment.dart';
import 'package:travita/lib/UI/Details/widget/discription.dart';

import '../../Component/colors/colors.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Image.asset("image/appBarLogo.png",width: 100,),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 ,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        //alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/1.3,
                              height: MediaQuery.of(context).size.height/2.2,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                "image/alex.png",
                                fit: BoxFit.cover,
                                height: MediaQuery.of(context).size.height / 4,
                              ),
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                      Description(placeName: "fort Qaitbey",
                          description:  "It may be a poor substitute for what was once the "
                          "site of the mighty Pharos Lighthouse–one of the seven "
                          "wonders of the ancient world",
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Just for you",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 210.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 10.w,),
                    itemCount: 5,
                    itemBuilder: ( context,index) => DetailsCategory(
                      text: "Underground at the Catacombs of Kom el-Shuqqafa",
                      image: "image/alex.png",
                    )
                    ,
                  ),
                ),
                Text(
                  "Comments ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) => SizedBox(
                    height: 15.h,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) =>
                      Comment(image: "image/fav.jpg", name: "Ahmed",
                          comment: "This palce is one of the most beautiful places in the world")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
