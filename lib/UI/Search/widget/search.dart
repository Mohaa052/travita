import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import '../../../Component/colors/colors.dart';


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
