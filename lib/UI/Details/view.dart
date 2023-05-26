import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Details/widget/comment.dart';
import 'package:travita/core/app_controller/appController.dart';
import 'package:travita/core/app_controller/appStates.dart';

import '../Favourite/controller/controller.dart';
import 'widget/category_for_you.dart';
import 'widget/discription.dart';

class DetailsScreen extends StatelessWidget {
  late final String? image;
  late final String name;
  late final String description;
  late final String type;
  late final String id;
  late bool isFavorite;

  DetailsScreen({
    required this.image,
    required this.name,
    required this.description,
    required this.type,
    required this.id,
    this.isFavorite = false,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
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
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.3,
                                  height:
                                      MediaQuery.of(context).size.height / 2.2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: image == null
                                      ? Image.asset(
                                          "image/appBarLogo.png",
                                          fit: BoxFit.cover,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                        )
                                      : Image.network(
                                          image!,
                                          fit: BoxFit.cover,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                        ),
                                ),
                                BlocConsumer<AppController, AppStates>(
                                  buildWhen: (previousState, currentState) =>
                                      currentState is! GetFavoritesLoading &&
                                      currentState is! GetFavoritesSuccess &&
                                      currentState is! GetFavoritesError,
                                  listener: (context, state) {
                                    if (state is PutInFavoritesError) {
                                      isFavorite = false;
                                    }
                                    if (state is DeleteFromFavoritesError) {
                                      isFavorite = true;
                                    }
                                  },
                                  builder: (context, state) {
                                    if (!isFavorite) {
                                      return IconButton(
                                        onPressed: () {
                                          if (state is! PutInFavoritesLoading &&
                                              state
                                                  is! DeleteFromFavoritesLoading) {
                                            isFavorite = !isFavorite;
                                            AppController.get(context)
                                                .putInFavorite(
                                              type: type,
                                              id: id,
                                            );
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.favorite_outline_outlined,
                                          color: Colors.red,
                                        ),
                                      );
                                    } else {
                                      return IconButton(
                                        onPressed: () {
                                          if (state is! PutInFavoritesLoading &&
                                              state
                                                  is! DeleteFromFavoritesLoading) {
                                            isFavorite = false;
                                            AppController.get(context)
                                                .deleteFromFavorite(
                                              favoriteType: type,
                                              id: id,
                                            );
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                      Description(
                        placeName: name,
                        description: description,
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
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10.w,
                    ),
                    itemCount: 5,
                    itemBuilder: (context, index) => DetailsCategory(
                      text: "Underground at the Catacombs of Kom el-Shuqqafa",
                      image: "image/alex.png",
                    ),
                  ),
                ),
                Text(
                  "Comments ",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                          height: 15.h,
                        ),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) => Comment(
                        image: "image/fav.jpg",
                        name: "Ahmed",
                        comment:
                            "This palce is one of the most beautiful places in the world")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
