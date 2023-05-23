import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Places_of_type/Models/restaurantsModel.dart';

import '../../../Component/widgets/category/category.dart';

class RestaurantsItemsBuilder extends StatelessWidget {
  late final RestaurantsModel restaurantsModel;

  RestaurantsItemsBuilder({
    required this.restaurantsModel,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: restaurantsModel.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        childAspectRatio: 2.w / 2.6.h,
      ),
      itemBuilder: (BuildContext context, int index) => Category(
        image: restaurantsModel.data[index].image,
        description: restaurantsModel.data[index].address ?? "UnKnown",
        nameOfPlace: restaurantsModel.data[index].name,
      ),
    );
  }
}
