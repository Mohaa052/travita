import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Places_of_type/Models/restaurantsModel.dart';

import '../../../Component/widgets/category/category.dart';

class CoffeeShopsItemsBuilder extends StatelessWidget {
  late final RestaurantsModel coffeeShopsModel;

  CoffeeShopsItemsBuilder({
    required this.coffeeShopsModel,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: coffeeShopsModel.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        childAspectRatio: 2.w / 2.6.h,
      ),
      itemBuilder: (BuildContext context, int index) => Category(
        image: coffeeShopsModel.data[index].image,
        description: coffeeShopsModel.data[index].address ?? "UnKnown",
        nameOfPlace: coffeeShopsModel.data[index].name,
      ),
    );
  }
}
