import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/screens/Search/controller/controller.dart';
import 'package:travita/screens/Search/widget/search_result_place.dart';

import '../../../Component/navigator.dart';
import '../../../Component/widgets/category/category.dart';
import '../../../core/app_controller/appController.dart';
import '../../Details/view.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: SearchImageController.get(context).searchResult!.data.length,
        /*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.w,
          childAspectRatio: 2.w / 2.6.h,
        ),*/
        itemBuilder: (BuildContext context, int index) =>
            SearchResultPlaceWidget(
          /*onPressed: () {
            AppController.get(context).detailsModel =
                SearchImageController.get(context).searchResult!.data[index];
            AppController.get(context).detailsModels =
                SearchImageController.get(context).searchResult!.data;
            defaultNavigator(
              context,
              const DetailsScreen(),
            );
          },*/
          place: SearchImageController.get(context).searchResult!.data[index],
        ),
      ),
    );
  }
}
