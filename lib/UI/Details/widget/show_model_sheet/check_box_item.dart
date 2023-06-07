import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Component/colors/colors.dart';
import '../../../../Component/widgets/defaultText.dart';

class CheckBoxItem extends StatefulWidget {
  const CheckBoxItem({Key? key}) : super(key: key);

  @override
  State<CheckBoxItem> createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Column(
      children: [
        CheckboxListTile(
          // enabled: true,
          activeColor:
          AppColors.darkOrange,
          checkColor: AppColors.white,
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
          side: MaterialStateBorderSide
              .resolveWith(
                (states) => BorderSide(
                width: 1.4,
                color: AppColors.darkBlue
                ),
          ),
          secondary: SizedBox(
              width: 40,
              height: 50,
              child: Image.asset(
                  "image/fav.jpg"),
            ),
          title: DefaultText(
            text: 'Cairo',
            textColor: AppColors.darkBlue,
            fontWeight: FontWeight.bold,
          ),
          subtitle: DefaultText(
            text: '3 Saved',
            textColor: AppColors.darkBlue,
          ),
        ),
        const Divider(
          color:AppColors.zety,
          height: 0,
          thickness: .2,
          endIndent: 20,
          indent: 20,
        )
      ],
    );
  }
}
