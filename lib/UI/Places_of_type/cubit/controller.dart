import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Places_of_type/cubit/states.dart';
import 'package:travita/UI/Places_of_type/widgets/attractionsItemsBuilder.dart';
import 'package:travita/UI/Places_of_type/widgets/hotelsItemBuilder.dart';
import 'package:travita/UI/Places_of_type/widgets/restaurantsItemsBuilder.dart';
import 'package:travita/core/app_constants/constants.dart';
import 'package:travita/core/database/remote/dioHelper/dioHelper.dart';

import '../../../Component/widgets/category/category.dart';
import '../Models/attractionsModel.dart';
import '../Models/hotelsModel.dart';
import '../Models/restaurantsModel.dart';

class PlacesOfTypeController extends Cubit<PlacesOfTypeStates> {
  PlacesOfTypeController() : super(PlacesOfTypeInitialState());

  static PlacesOfTypeController get(context) => BlocProvider.of(context);

  late bool isInitial = true;

  late int subTpeIndex = 0;
  String? category;
  late final List<String> subTypes = [
    "Ancient Ruins",
    "historical",
    "Shopping Malls",
    "water & Diving and snorkeling & swim",
    "Horseback riding tours",
    "Bike Tours",
    "boat tours",
    "day trips",
  ];

  void changeSubType({
    required int index,
    required String category,
  }) {
    if (subTpeIndex != index) {
      subTpeIndex = index;
      getAttractions(
        query: {
          "subtype[li]": subTypes[index],
        },
      );
    }
  }

  AttractionsModel? attractionsModel;
  RestaurantsModel? restaurantsModel;
  HotelsModel? hotelsModel;
  var cofeModel;

  void getPlacesOfTypeData({
    required String endpoint,
  }) {
    switch (endpoint) {
      case "attractions":
        {
          getAttractions(
            query: {
              "subtype[li]": subTypes[0],
            },
          );
        }
        break;
      case "hotels":
        {
          getHotels();
        }
        break;
      case "restaurants":
        {
          getRestaurant();
        }
        break;
    }
  }

  void getAttractions({
    required Map<String, String> query,
  }) {
    emit(PlacesOfTypeGetDataLoadingState());
    DioHelper.getData(
      baseUrl: AppConstants.baseUrl,
      url: "attractions",
      query: query,
    ).then((value) {
      attractionsModel = AttractionsModel.fromJson(value.data);
      emit(PlacesOfTypeGetDataSuccessState());
    }).catchError((error) {
      print("The error is -----------> ${error.toString()}");
      emit(PlacesOfTypeGetDataErrorState());
    });
  }

  void getHotels() {
    emit(PlacesOfTypeGetDataLoadingState());

    DioHelper.getData(
      url: "hotels",
      baseUrl: AppConstants.baseUrl,
    ).then((value) {
      hotelsModel = HotelsModel.fromJson(value.data);
      emit(PlacesOfTypeGetDataSuccessState());
    }).catchError((error) {
      print("The error is -----------> ${error.toString()}");
      emit(PlacesOfTypeGetDataErrorState());
    });
  }

  void getRestaurant() {
    emit(PlacesOfTypeGetDataLoadingState());

    DioHelper.getData(
      baseUrl: AppConstants.baseUrl,
      url: "restaurants",
    ).then((value) {
      restaurantsModel = RestaurantsModel.fromJson(value.data);
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
