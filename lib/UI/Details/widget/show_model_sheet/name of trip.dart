import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/textFrmField/dfaultTextFormField.dart';
import 'package:travita/Component/widgets/textFrmField/simple%20textFiels.dart';
import 'package:travita/UI/Details/widget/show_model_sheet/check_box_item.dart';
import 'package:travita/UI/Details/widget/show_model_sheet/showModelSheets.dart';
import 'package:travita/UI/information%20for%20the%20plan/Widget/location_button.dart';

import '../../../../Component/widgets/button/default_button.dart';

class NameOfTrip extends StatefulWidget {
  const NameOfTrip({Key? key}) : super(key: key);

  @override
  State<NameOfTrip> createState() => _NameOfTripState();
}

class _NameOfTripState extends State<NameOfTrip> {
  @override
  Widget build(BuildContext context) {
    TextEditingController tripNameController= TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SimpleTextFormFiled(
              icon: null,
              type: "Name the trip",
              textEditingController: tripNameController,
            ),
          ),
          // LocationButton(
          //   icon: null,
          //   text: "Create a trip",
          //   width: 170.w,
          //   height: 60.h,
          //   fontSize: 20.sp,
          //
          // ),
          DefaultButton(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
            borderRadius: 10,
            opacity: 1,
            onPressed: () {
             CheckBoxItem(
               nameTheTrip: tripNameController.text,
             );
             Navigator.pop(context);
            },
            width: 200.w,
            height: 60.h,
            backgroundColor: AppColors.darkOrange,
            text: "Create a Trip",
          ),
        ],
      ),
    );
  }
}
