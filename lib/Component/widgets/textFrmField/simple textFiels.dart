import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class SimpleTextFormFiled extends StatelessWidget {
  String lable ;

  SimpleTextFormFiled({super.key, required this.lable});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColors.darkBlue)),
          label: Text(lable), border: OutlineInputBorder()),
    );
  }
}
