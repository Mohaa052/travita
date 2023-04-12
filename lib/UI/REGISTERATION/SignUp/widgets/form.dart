import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Component/colors/colors.dart';
import '../../../../Component/widgets/AccountsIcons/accountsIcons.dart';
import '../../../../Component/widgets/button/defaultTextButton.dart';
import '../../../../Component/widgets/button/registeration_button.dart';
import '../../../../Component/widgets/textFrmField/dfaultTextFormField.dart';
import '../../../layOut/view.dart';
import '../../LogIN/loginScreen.dart';
import '../controller.dart';
import 'curve.dart';

class SignUpFormWithCurve extends StatelessWidget {
  SignUpFormWithCurve({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SignUpController controller = SignUpController();

    return SizedBox(
      height: controller.signUpFormWithCurveHeight,
      child: Stack(
        children: [
          const SignUpCurve(),
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
                          Text(
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
                            validate: () {
                              print(
                                  "------------------------------------------");
                              print(755.h.toString());
                              print(controller.signUpFormWithCurveHeight
                                  .toString());
                              controller.signUpFormWithCurveHeight =
                                  controller.signUpFormWithCurveHeight + 10.h;
                            },
                            hintText: "First name",
                            isPassword: false,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
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
                            validate: () {},
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
                  Text(
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
                    validate: () {},
                    hintText: "Email Address",
                    //prefix: null,
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
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
                    validate: () {},
                    hintText: "Password",
                    suffix: Icons.visibility_outlined,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
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
                    validate: () {},
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
                                builder: (context) => const LayOutScreen()),
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
                  Spacer(),
                  AccountsIcons("sign up"),
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
                                builder: (context) => LoginScreen()),
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
