import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors/colors.dart';

class DefaultFormField extends StatefulWidget {
  late double width;
  late double height;
  late TextEditingController controller;
  late TextInputType type;
  late Function validate;
  late String hintText;
  IconData? prefix;
  IconData? suffix;
  Function? suffixButtonPressed;
  bool isPassword = false;

  DefaultFormField({
    required this.width,
    required this.height,
    required this.controller,
    required this.type,
    required this.validate,
    required this.hintText,
    required this.isPassword,
    this.suffixButtonPressed,
    this.prefix,
    this.suffix,

    //this.onSubmit,
  });

  @override
  State<DefaultFormField> createState() => _DefaultFormFieldState();
}

class _DefaultFormFieldState extends State<DefaultFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        style: const TextStyle(color: AppColors.white),
        cursorColor: AppColors.white,
        keyboardType: widget.type,
        controller: widget.controller,
        obscureText: widget.isPassword,
        validator: (value) {
          widget.validate();
          if (value!.isEmpty) {
            setState(() {
              widget.height = 80.h;
            });
            return "Please enter your ${widget.hintText}";
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.w, right: 10.w),
          suffixIcon: widget.isPassword == true
              ? InkWell(
                  onTap: () {
                    widget.suffixButtonPressed!();
                  },
                  child: Icon(
                    Icons.remove_red_eye_outlined,
                    size: 20,
                    color: AppColors.ofBlue,
                  ),
                )
              : null,
          // prefix: widget.prefix != null ? Icon(widget.prefix) : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
              color: AppColors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
