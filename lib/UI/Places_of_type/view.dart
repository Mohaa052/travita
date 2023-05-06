import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Places_of_type/cubit/controller.dart';
import 'package:travita/UI/Places_of_type/cubit/states.dart';

class PlacesOfType extends StatelessWidget {
  late final String category;

  PlacesOfType({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlacesOfTypeController>(
      create: (context) => PlacesOfTypeController()
        ..getPlacesOfTypeData(
          url: category.toLowerCase(),
        ),
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Image.asset(
            "image/appBarLogo.png",
            width: 100,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20.r,
                left: 10.r,
              ),
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: BlocConsumer<PlacesOfTypeController, PlacesOfTypeStates>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state is PlacesOfTypeGetDataSuccessState
                      ? Padding(
                          padding: EdgeInsets.all(20.r),
                          child: PlacesOfTypeController.get(context).buildItems(
                            category: category.toLowerCase(),
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
