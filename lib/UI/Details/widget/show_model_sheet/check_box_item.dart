import 'package:flutter/material.dart';
import '../../../../Component/colors/colors.dart';
import '../../../../Component/widgets/defaultText.dart';

class CheckBoxItem extends StatefulWidget {
  const CheckBoxItem({Key? key}) : super(key: key);

  @override
  State<CheckBoxItem> createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  bool isChecked =false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue!;
            });
          },
          activeColor: AppColors.darkBlue,
          checkColor: AppColors.white,

          side: MaterialStateBorderSide
              .resolveWith(
                (states) => const BorderSide(
                width: 1.4,
                color: AppColors.darkBlue
            ),
          ),
          secondary: SizedBox(
              width: 40,
              height: 50,
              child: Image.asset("image/fav.jpg")),
          title: DefaultText(
            text: 'Cairo',
            textColor: AppColors.darkBlue,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,
          ),
          subtitle:  DefaultText(
            text: '3 Saved',
            textColor: AppColors.darkBlue,
            textAlign: TextAlign.start,
          ),
        ),
        const Divider(
          height: 0,
          thickness: .8,
          indent: 20,
           endIndent: 20,
          color: AppColors.darkGrey,
        ),
      ],
    );
  }
}
