import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/category/category_of_type_the_favourit.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/Details/details.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          titleSpacing: 0,
          title: Image.asset(
            "image/appBarLogo.png",
            width: 100,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultText(
                text: 'Favourites',
                fontWeight: FontWeight.w700,
                textColor: AppColors.darkBlue,
                fontSize: 32.sp,
              ),
              SizedBox(
                height: 20.h,
              ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelPadding: EdgeInsets.all(8),
                // indicatorPadding: EdgeInsetsGeometry.infinity,
                splashBorderRadius: BorderRadius.all(Radius.circular(10)),
                /*dividerColor: Colors.blue,*/
                indicatorColor: AppColors.darkOrange,
                labelColor: AppColors.darkOrange,
                unselectedLabelColor: AppColors.darkBlue,
                automaticIndicatorColorAdjustment: false,
                padding: EdgeInsets.all(0),
                enableFeedback: true,
                // indicatorWeight: 4,
                tabs: [
                  DefaultText(
                    text: 'Plans',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    // textColor: AppColors.darkBlue,
                  ),
                  DefaultText(
                    text: 'Places',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    // textColor: AppColors.darkBlue,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.separated(
                      itemBuilder: (context, index) =>
                          CategoryOfTypeTheFavourite(
                        image: 'image/alex.png',
                        description:
                            "We love Landingfolio! Our designers were using it for their projects ",
                        nameOfPlace: "Fort Qaitbey",
                        rate: 4,
                        /*onTap: () {
                          defaultNavigator(context, Details());
                        },*/
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                      itemCount: 10,
                    ),
                    ListView.separated(
                      itemBuilder: (context, index) =>
                          CategoryOfTypeTheFavourite(
                        image: 'image/casel.png',
                        description:
                            "We love Landingfolio! Our designers were using it for their projects ",
                        nameOfPlace: "Fort Qaitbey",
                        rate: 4,
                        /*onTap: () {
                          defaultNavigator(context, Details());
                          print("fav");
                        },*/
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                      itemCount: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
