import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Component/widgets/category/category.dart';
import '../Models/attractionsModel.dart';

class AttractionsItemsBuilder extends StatelessWidget {
  late final AttractionsModel attractionsModel;

  AttractionsItemsBuilder({
    required this.attractionsModel,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 30,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        childAspectRatio: 2.w / 2.6.h,
      ),
      itemBuilder: (BuildContext context, int index) => Category(
        image: attractionsModel.data[index].image,
        description: attractionsModel.data[index].description ?? "UnKnown",
        nameOfPlace: attractionsModel.data[index].name,
      ),
    );
  }
}
