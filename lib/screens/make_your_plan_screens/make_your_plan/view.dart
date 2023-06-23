import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/screens/make_your_plan_screens/make_your_plan/widgets/one_type_places.dart';

import '../../../Component/colors/colors.dart';
import '../../../Component/widgets/defaultText.dart';
import '../more_places/view.dart';
import 'controller/controller.dart';

class MakeYourPlanScreen extends StatelessWidget {
  const MakeYourPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MakeYourPlanController>(
      create: (context) => MakeYourPlanController()..getData(),
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Image.asset(
            "image/appBarLogo.png",
            width: 100,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 10.h,
            left: 32.w,
            bottom: 5.h,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                DefaultText(
                  text: "Make your own plan",
                  fontWeight: FontWeight.w700,
                  fontSize: 32.sp,
                  textColor: AppColors.darkBlue,
                ),
                SizedBox(
                  height: 8.h,
                ),
                DefaultText(
                  text:
                      "Choose the suitable places for your trip through the classifications, and we will calculate the full budget required for your trip.",
                  fontWeight: FontWeight.w300,
                  fontSize: 16.sp,
                  textColor: AppColors.black,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.6,
                  child: const AttractionsWidget(
                    placeType: "Attractions",
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.6,
                  child: const HotelsWidget(
                    placeType: "Hotels",
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.6,
                  child: const RestaurantsWidget(
                    placeType: "Restaurants",
                  ),
                ),
                /*ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 25.h,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index) => OneTypeOfPlacesWidget(
                    onTap: () {
                      defaultNavigator(
                        context,
                        MorePlacesByType(
                          placeType: MakeYourPlanController.get(context)
                              .placesTypes[index],
                        ),
                      );
                    },
                    placeType:
                        MakeYourPlanController.get(context).placesTypes[index],
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
