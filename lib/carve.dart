
import 'package:flutter/material.dart';
import 'package:travita/UI/Details/widget/show_model_sheet/check_box_item.dart';

import 'Component/colors/colors.dart';
import 'Component/widgets/defaultText.dart';
import 'UI/Details/widget/show_model_sheet/showModelSheets.dart';

class CurveScreen extends StatefulWidget {
  @override
  State<CurveScreen> createState() => _CurveScreenState();
}

class _CurveScreenState extends State<CurveScreen> {
bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 400,
          child: ListView.separated(
            separatorBuilder: (context,index)=>SizedBox(height: 10,),
            itemBuilder: (context,index)=> CheckBoxItem(),
            itemCount: 3,
          ),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return const ShowModelSheet();
                },
              );
            },
            child: Icon(
              Icons.add,
              color: AppColors.darkOrange,
            ),
          ),
        ],
      ),
    );
  }
}
