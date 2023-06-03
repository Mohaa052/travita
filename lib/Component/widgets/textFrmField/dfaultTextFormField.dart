import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../colors/colors.dart';

class DefaultFormField extends StatelessWidget {
  late double width;
  late double height;
  late TextEditingController controller;
  late TextInputType type;
  final String? Function(String?)? validate;
  late String hintText;
  bool? obSecure;
  IconData? prefix;
  IconData? suffix;
  void Function()? suffixButtonPressed;
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
    this.obSecure,
    this.prefix,
    this.suffix,

    //this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        style: const TextStyle(color: AppColors.white),
        cursorColor: AppColors.white,
        keyboardType: type,
        controller: controller,
        obscureText: obSecure ?? false,
        validator: validate,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 10.w,
            right: 10.w,
          ),
          suffixIcon: isPassword == true
              ? InkWell(
                  onTap: suffixButtonPressed,
                  child: Icon(
                    suffix,
                    size: 20,
                    color: AppColors.ofBlue,
                  ),
                )
              : null,
          // prefix: prefix != null ? Icon(prefix) : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(
              color: AppColors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class SearchFormField extends StatefulWidget {
  late double width;
  late double height;
  late TextEditingController controller;
  late String hintText;

  SearchFormField({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
    required this.hintText,
  });

  @override
  State<SearchFormField> createState() => _SearchFormFieldState();
}

class _SearchFormFieldState extends State<SearchFormField> {
  @override
  Widget build(BuildContext context) {
    File? file;
    bool isFile = false;
    void tokenImageWithCamera() async {
      XFile? xFileImage =
          await ImagePicker().pickImage(source: ImageSource.camera);
      File image = File(xFileImage!.path);
      setState(() {
        file = image;
        isFile = true;
      });
    }

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        style: const TextStyle(color: AppColors.black),
        cursorColor: AppColors.darkOrange,
        controller: widget.controller,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            icon: Icon(Icons.search, color: AppColors.darkOrange),
            onPressed: () {},
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.camera_alt_outlined, color: AppColors.darkOrange),
            onPressed: tokenImageWithCamera,
          ),
          hintText: widget.hintText,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: AppColors.darkOrange)),
          contentPadding: EdgeInsets.only(left: 10.w, right: 10.w),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: const BorderSide(color: AppColors.grey)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r)),
        ),
      ),
    );
  }
}
