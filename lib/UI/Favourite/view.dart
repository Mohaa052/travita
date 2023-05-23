import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/category/category_of_type_the_favourit.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/Details/view.dart';
import 'package:travita/UI/Favourite/controller/controller.dart';
import 'package:travita/UI/Favourite/controller/states.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoritesController>(
      create: (context) => FavoritesController()..getFavorite(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
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
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
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
                      BlocConsumer<FavoritesController, FavoriteStates>(
                        listener: (context, state) {},
                        builder: (context, state) => ListView.builder(
                          physics: const BouncingScrollPhysics(),
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
                          itemCount: 10,
                        ),
                      ),
                      BlocConsumer<FavoritesController, FavoriteStates>(
                        listener: (context, state) {},
                        builder: (context, state) => state
                                is GetFavoritesSuccess
                            ? ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) =>
                                    CategoryOfTypeTheFavourite(
                                  image: FavoritesController.get(context)
                                      .favoritesModel
                                      .data
                                      .allFavorites[index]
                                      .image,
                                  description: FavoritesController.get(context)
                                      .favoritesModel
                                      .data
                                      .allFavorites[index]
                                      .address,
                                  nameOfPlace: FavoritesController.get(context)
                                      .favoritesModel
                                      .data
                                      .allFavorites[index]
                                      .address,
                                  rate: 4,
                                  /*onTap: () {
                            defaultNavigator(context, Details());
                            print("fav");
                          },*/
                                ),
                                itemCount: FavoritesController.get(context)
                                    .favoritesModel
                                    .data
                                    .allFavorites
                                    .length,
                              )
                            : const Center(child: CircularProgressIndicator()),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
