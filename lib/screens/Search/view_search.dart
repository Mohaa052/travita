import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/screens/Search/widget/Image.dart';
import 'package:travita/screens/Search/widget/result.dart';
import 'package:travita/screens/Search/widget/search.dart';

import 'controller/controller.dart';
import 'controller/states.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchImageController>(
      create: (context) => SearchImageController(),
      child: BlocConsumer<SearchImageController, SearchStates>(
        buildWhen: (previous, current) => false,
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.h,
              ),
              SearchFormField(
                width: 395.w,
                height: 55.h,
                controller: SearchImageController.get(context).searchController,
                hintText: "Search",
              ),
              BlocConsumer<SearchImageController, SearchStates>(
                  buildWhen: (previousState, currentState) =>
                      currentState is GetSearchResultLoading ||
                      currentState is GetImageSuccess ||
                      currentState is GetSearchResultSuccess,
                  listener: (context, state) {},
                  builder: (context, state) {
                    if (state is GetImageSuccess) {
                      return SearchImageWidget();
                    } else if (state is GetSearchResultLoading) {
                      return const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else if (state is GetSearchResultSuccess) {
                      return SearchResultWidget();
                    } else {
                      return const SizedBox();
                    }
                  }),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
