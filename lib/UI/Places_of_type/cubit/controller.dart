import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Places_of_type/cubit/states.dart';
import 'package:travita/UI/Places_of_type/widgets/attractionsItemsBuilder.dart';
import 'package:travita/UI/Places_of_type/widgets/hotelsItemBuilder.dart';
import 'package:travita/UI/Places_of_type/widgets/restaurantsItemsBuilder.dart';
import 'package:travita/core/database/remote/dioHelper/dioHelper.dart';

import '../../../Component/widgets/category/category.dart';
import '../Models/attractionsModel.dart';
import '../Models/hotelsModel.dart';
import '../Models/resturantsModel.dart';

class PlacesOfTypeController extends Cubit<PlacesOfTypeStates> {
  PlacesOfTypeController() : super(PlacesOfTypeInitialState());

  static PlacesOfTypeController get(context) => BlocProvider.of(context);

  AttractionsModel? attractionsModel;
  RestaurantsModel? restaurantsModel;
  HotelsModel? hotelsModel;
  var cofeModel;

  void getPlacesOfTypeData({
    required String url,
  }) {
    emit(PlacesOfTypeGetDataLoadingState());
    DioHelper.getData(
      url: url,
    ).then((value) {
      switch (url) {
        case "attractions":
          {
            attractionsModel = AttractionsModel.fromJson(value.data);
          }
          break;
        case "hotels":
          {
            hotelsModel = HotelsModel.fromJson(value.data);
          }
          break;
        case "restaurants":
          {
            restaurantsModel = RestaurantsModel.fromJson(value.data);
          }
          break;
        default:
          {}
          break;
      }
      emit(PlacesOfTypeGetDataSuccessState());
    }).catchError((error) {
      print("The error is -----------> ${error.toString()}");
      emit(PlacesOfTypeGetDataErrorState());
    });
  }

  Widget buildItems({
    required String category,
  }) {
    Widget gridView = GridView.builder(
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
            ));

    switch (category) {
      case "attractions":
        {
          gridView = AttractionsItemsBuilder(
            attractionsModel: attractionsModel!,
          );
        }
        break;
      case "hotels":
        {
          gridView = HotelsItemsBuilder(
            hotelsModel: hotelsModel!,
          );
        }
        break;
      case "restaurants":
        {
          gridView = RestaurantsItemsBuilder(
            restaurantsModel: restaurantsModel!,
          );
        }
        break;
      default:
        {}
        break;
    }
    return gridView;
  }

  // Category buildCategory({
  //   required String category,
  //   required int index,
  // }) {
  //   Category categoryWidget = Category(
  //     image: "image/coffee.png",
  //     description:
  //         " Sumptuous Ras el-Tin Palace was once a summer escape for Egypt's sultans when the desert heat of Cairo got too much to bear.",
  //     nameOfPlace: "Ras el-Tin Palace",
  //   );
  //
  //   switch (category) {
  //     case "attractions":
  //       {
  //         categoryWidget = Category(
  //           image: attractionsModel!.data[index].image,
  //           nameOfPlace: attractionsModel!.data[index].name,
  //           description: attractionsModel!.data[index].description ??
  //               attractionsModel!.data[index].address!,
  //         );
  //       }
  //       break;
  //     case "hotels":
  //       {
  //         categoryWidget = Category(
  //           image: hotelsModel!.data[index].image,
  //           nameOfPlace: hotelsModel!.data[index].name,
  //           description: hotelsModel!.data[index].address,
  //         );
  //       }
  //       break;
  //     case "restaurants":
  //       {
  //         categoryWidget = Category(
  //           image: restaurantsModel!.data[index].image,
  //           nameOfPlace: restaurantsModel!.data[index].name,
  //           description: restaurantsModel!.data[index].website ?? "Unknown",
  //         );
  //       }
  //       break;
  //     default:
  //       {}
  //       break;
  //   }
  //   return categoryWidget;
  // }
}
