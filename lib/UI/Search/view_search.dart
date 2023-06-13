import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/button/DefaultOutlindedButton.dart';
import 'package:travita/UI/Search/controller/controller.dart';
import 'package:travita/UI/Search/controller/states.dart';
import 'package:travita/UI/Search/widget/Image.dart';
import 'package:travita/UI/Search/widget/search.dart';
import 'package:travita/core/app_controller/appController.dart';

import '../../Component/colors/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchController(),
      child: BlocConsumer<SearchController, SearchStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 80.h,
                ),
                SearchFormField(
                  width: 395.w,
                  height: 55.h,
                  controller: SearchController.get(context).searchController,
                  hintText: "Search",
                ),
                if(state is UpLoadPhotoLoading)
                  const LinearProgressIndicator(),
                if (SearchController.get(context).searchImage != null)
                  SearchImage(),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
