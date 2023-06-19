import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/defaultText.dart';

import '../../colors/colors.dart';
import 'dfaultTextFormField.dart';

class SimpleTextFormFiled extends StatelessWidget {
  IconData? icon;
  String? type;
  SimpleTextFormFiled({
    super.key,
    this.icon,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: AppColors.darkBlue,
            ),
            SizedBox(
              width: 12.h,
            ),
            DefaultText(
              text: type!,
              textColor: AppColors.darkBlue,
              fontWeight: FontWeight.w600,
              fontSize: 25.sp,
            )
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        TextFormField(
          decoration: InputDecoration(
            constraints: const BoxConstraints(maxHeight: 50, minHeight: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColors.zety),
            ),
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
