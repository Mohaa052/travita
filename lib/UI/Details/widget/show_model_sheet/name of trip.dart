import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/widgets/textFrmField/dfaultTextFormField.dart';
import 'package:travita/Component/widgets/textFrmField/simple%20textFiels.dart';

import '../../../../Component/widgets/button/default_button.dart';

class NameOfTrip extends StatefulWidget {
  const NameOfTrip({Key? key}) : super(key: key);

  @override
  State<NameOfTrip> createState() => _NameOfTripState();
}

class _NameOfTripState extends State<NameOfTrip> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SimpleTextFormFiled(
              lable: "Enter name of trip",
            ),
          ),
          DefaultButton(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            borderRadius: 15,
            opacity: 1,
            onPressed: () {},
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
