import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Places_of_type/Models/hotelsModel.dart';

import '../../../Component/widgets/category/category.dart';

class HotelsItemsBuilder extends StatelessWidget {
  late final HotelsModel hotelsModel;

  HotelsItemsBuilder({
    required this.hotelsModel,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: hotelsModel.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        childAspectRatio: 2.w / 2.6.h,
      ),
      itemBuilder: (BuildContext context, int index) => Category(
        image: hotelsModel.data[index].image,
        description: hotelsModel.data[index].address,
        nameOfPlace: hotelsModel.data[index].name,
      ),
    );
  }
}
