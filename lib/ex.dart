import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/category/category.dart';
import 'package:travita/Component/widgets/category/category_of_type.dart';
import 'package:travita/Component/widgets/category/category_of_type_the_favourit.dart';
import 'package:travita/UI/Places_of_type/view.dart';

import 'Component/colors/colors.dart';
import 'Component/widgets/button/DefaultOutlindedButton.dart';
import 'Component/widgets/button/defaultTextButton.dart';
import 'Component/widgets/button/registeration_button.dart';
import 'Component/widgets/textFrmField/dfaultTextFormField.dart';
import 'UI/REGISTERATION/LogIN/view.dart';
import 'UI/REGISTERATION/SignUp/widgets/curve.dart';
import 'UI/REGISTERATION/widgets/accountsIcons.dart';
import 'UI/layOut/view.dart';

class Ex extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            DefaultFormField(
              width: 100,
              height: 50,
              controller: TextEditingController(),
              type: TextInputType.visiblePassword,
              validate: (value) {},
              hintText: "Password",
              isPassword: true,
              suffix: Icons.visibility_outlined,
              suffixButtonPressed: () {},
            ),
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exxx()),
                    );
                  }
                },
                child: RegisterationButton(
                  name: "Log In",
                  width: 245.w,
                  height: 45.h,
                  fontSize: 25.sp,
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 140,
              child: TextFormField(
                cursorColor: Colors.white,
                obscureText: true,
                enabled: true,
                textAlign: TextAlign.start,
                maxLines: 1,
                scrollPhysics: const ScrollPhysics(),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: 10, right: 0, top: 2, bottom: 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    suffix: const Icon(
                      Icons.add,
                      size: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 60,
              width: 140,
              child: TextFormField(
                cursorColor: Colors.white,
                obscureText: true,
                enabled: true,
                textAlign: TextAlign.start,
                maxLines: 1,
                scrollPhysics: const ScrollPhysics(),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                      left: 10, right: 0, top: 2, bottom: 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exxx extends StatelessWidget {
  const Exxx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Category(
            image: null,
            description: "asdlfkls;fdkjlsdfja;sdfjaslkfjlsdkfskla;fsd",
            nameOfPlace: "ad;l", type: '', id: '',
          )),
        ],
      ),
    );
  }
}

class TestinggTwo extends StatelessWidget {
  TestinggTwo({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.only(
                right: 40.w,
                left: 30.w,
              ),
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 130.h,
                  ),
                  Text(
                    "Sign UP ",
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Hello , Please fill this form to create an account",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "First Name",
                            style: TextStyle(
                              color: AppColors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          DefaultFormField(
                            width: 141.w,
                            height: 41.h,
                            controller: TextEditingController(),
                            type: TextInputType.text,
                            validate: (value) {
                              print(
                                  "------------------------------------------");
                            },
                            hintText: "First name",
                            isPassword: false,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Last Name",
                            style: TextStyle(
                              color: AppColors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          DefaultFormField(
                            width: 192.w,
                            height: 41.h,
                            controller: TextEditingController(),
                            type: TextInputType.text,
                            validate: (value) {},
                            hintText: "Last Name",
                            isPassword: false,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Text(
                    'Email address',
                    style: TextStyle(
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  DefaultFormField(
                    width: double.infinity,
                    height: 41.h,
                    controller: TextEditingController(),
                    type: TextInputType.text,
                    validate: (value) {},
                    hintText: "Email Address",
                    //prefix: null,
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Text(
                    'Create password',
                    style: TextStyle(
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  DefaultFormField(
                    width: double.infinity,
                    height: 49.h,
                    controller: TextEditingController(),
                    type: TextInputType.visiblePassword,
                    validate: (value) {},
                    hintText: "Password",
                    suffix: Icons.visibility_outlined,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Text(
                    'password',
                    style: TextStyle(color: AppColors.grey),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  DefaultFormField(
                    width: double.infinity,
                    height: 49.h,
                    controller: TextEditingController(),
                    type: TextInputType.visiblePassword,
                    validate: (value) {},
                    hintText: "Password",
                    suffix: Icons.visibility_outlined,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LayOutScreen()),
                          );
                        }
                      },
                      child: RegisterationButton(
                        name: "Sign Up",
                        fontSize: 25.sp,
                        height: 45.h,
                        width: 245.w,
                      ),
                    ),
                  ),
                  /*SizedBox(
                height: 8.h,
              ),*/
                  const Spacer(),
                  AccountsIcons(
                    connect: "sign up",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " Don’t have an account?  ",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                      DefaultTextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        text: "Log In",
                        textColor: AppColors.darkOrange,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
