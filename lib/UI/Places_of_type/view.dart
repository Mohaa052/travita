import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Places_of_type/cubit/controller.dart';
import 'package:travita/UI/Places_of_type/cubit/states.dart';
import 'package:travita/UI/Places_of_type/widgets/subTypes.dart';
import 'package:travita/ex.dart';

import '../../Component/colors/colors.dart';
import '../survey/widgets/surveyButton.dart';

class PlacesOfTypeScreen extends StatelessWidget {
  late final String category;

  PlacesOfTypeScreen({
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
            if (category == "Attractions")
              Padding(
                padding: EdgeInsets.only(
                  left: 8.w,
                  bottom: 8.h,
                  top: 8.h,
                ),
                child: BlocConsumer<PlacesOfTypeController, PlacesOfTypeStates>(
                  buildWhen: (previousState, currentState) =>
                      currentState is PlacesOfTypeChangeSubTypeState,
                  listener: (context, state) {},
                  builder: (context, state) => SizedBox(
                    height: 40.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => SubType(
                        surveyCategoriesText:
                            PlacesOfTypeController.get(context).subTypes[index],
                        onTap: () {
                          if (PlacesOfTypeController.get(context).subTpeIndex !=
                              index) {
                            PlacesOfTypeController.get(context).changeSubType(
                              index: index,
                            );
                            PlacesOfTypeController.get(context)
                                .getPlacesOfTypeData(
                              url: category.toLowerCase(),
                              query: {
                                "subtype[li]":
                                    PlacesOfTypeController.get(context)
                                        .subTypes[index],
                              },
                            );
                          }
                        },
                        iconAndTextColor:
                            PlacesOfTypeController.get(context).subTpeIndex ==
                                    index
                                ? AppColors.white
                                : AppColors.black,
                        oneCategoryOfSurveyColor:
                            PlacesOfTypeController.get(context).subTpeIndex ==
                                    index
                                ? AppColors.darkOrange
                                : AppColors.ofWhite,
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 5.w,
                      ),
                      itemCount:
                          PlacesOfTypeController.get(context).subTypes.length,
                    ),
                  ),
                ),
              ),
            Expanded(
              child: BlocConsumer<PlacesOfTypeController, PlacesOfTypeStates>(
                buildWhen: (previousState, currentState) =>
                    currentState is PlacesOfTypeGetDataSuccessState,
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
