import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/Search/widget/search.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

            SizedBox(
              height: 80.h,
            ),
            SearchFormField(
              width: 395.w,
              height: 55.h,
              controller: searchController,
              hintText: "Search",
            ),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}
