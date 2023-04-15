import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Places_of_type/cubit/controller.dart';
import 'package:travita/UI/Places_of_type/cubit/states.dart';

import '../../Component/widgets/category/category.dart';

class PlacesOfType extends StatelessWidget {
  late final int index;
  late final String category;

  PlacesOfType({
    required this.index,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlacesOfTypeController>(
      create: (context) => PlacesOfTypeController()
        ..getPlacesOfTypeData(
          url: category.toLowerCase(),
        ),
      child: BlocConsumer<PlacesOfTypeController, PlacesOfTypeStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: Image.asset(
              "image/appBarLogo.png",
              width: 100,
            ),
          ),
          body: PlacesOfTypeController.get(context).hotelsModel != null
              ? Padding(
                  padding: EdgeInsets.all(20.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category,
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Expanded(
                        child: GridView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: 10,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10.h,
                              crossAxisSpacing: 10.w,
                              childAspectRatio: 2.w / 2.6.h,
                            ),
                            itemBuilder: (BuildContext context, int index) =>
                                Category(
                                  image: "image/coffee.png",
                                  description:
                                      " Sumptuous Ras el-Tin Palace was once a summer escape for Egypt's sultans when the desert heat of Cairo got too much to bear.",
                                  nameOfPlace: "Ras el-Tin Palace",
                                )),
                      ),
                    ],
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
