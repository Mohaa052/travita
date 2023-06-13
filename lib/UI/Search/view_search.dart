

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Search/widget/Image.dart';
import 'package:travita/UI/Search/widget/search.dart';

import 'controller/controller.dart';
import 'controller/states.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchControllerr>(
      create: (context) => SearchControllerr(),
      child: BlocConsumer<SearchControllerr, SearchStates>(
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
                  controller: SearchControllerr.get(context).searchController,
                  hintText: "Search",
                ),
                if(state is UpLoadPhotoLoading)
                  const LinearProgressIndicator(),
                if (SearchControllerr.get(context).searchImage != null)
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
