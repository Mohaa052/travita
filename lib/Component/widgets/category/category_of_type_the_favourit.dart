import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rate/rate.dart';
import 'package:travita/UI/Favourite/controller/controller.dart';
import 'package:travita/UI/Favourite/models.dart';
import 'package:travita/core/app_controller/appController.dart';
import 'package:travita/core/app_controller/appStates.dart';

import '../../colors/colors.dart';
import '../../../UI/Details/view.dart';
import '../defaultText.dart';

class CategoryOfTypeTheFavourite extends StatelessWidget {
  late final FavoriteItem favoriteItem;
  late final int index;

  CategoryOfTypeTheFavourite({
    required this.favoriteItem,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              detailsType: favoriteItem.favoriteType,
              detailsId: favoriteItem.id.toString(),
              image: favoriteItem.image,
              name: favoriteItem.name,
              description: favoriteItem.address,
            ),
          ),
        );
      },
      icon: Container(
        width: 180.w,
        height: 167.h,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Image.network(
          favoriteItem.image,
          fit: BoxFit.cover,
        ),
      ),
      label: SizedBox(
        width: MediaQuery.of(context).size.width / 2.1,
        height: 165.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.85,
                  child: DefaultText(
                    text: favoriteItem.name,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.left,
                    fontSize: 20.sp,
                    textColor: AppColors.darkBlue,
                  ),
                ),
                BlocConsumer<AppController, AppStates>(
                  buildWhen: (previousState, currentState) =>
                      currentState is ChangeFavoriteIcons,
                  listener: (context, state) {},
                  builder: (context, state) => IconButton(
                    onPressed: () {
                      if (state is! DeleteFromFavoritesLoading) {
                        AppController.get(context).changeFavoriteIcon(
                          index: index,
                        );
                        AppController.get(context).deleteFromFavorite(
                            favoriteType: favoriteItem.favoriteType,
                            id: favoriteItem.id.toString());
                      }
                    },
                    icon: Icon(
                      favoriteItem.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_outline_outlined,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            DefaultText(
              text: favoriteItem.address,
              fontSize: 18.sp,
              fontWeight: FontWeight.w300,
              textColor: AppColors.darkGrey,
              maxLines: 3,
              textOverflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
            Rate(
              iconSize: 25,
              color: AppColors.darkOrange,
              allowHalf: false,
              allowClear: true,
              initialValue: favoriteItem.rating.toDouble(),
              readOnly: true,
              // onChange: (value) => print(value),
            ),
          ],
        ),
      ),
    );
  }
}
