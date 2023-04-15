import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Component/colors/colors.dart';
import '../../../../Component/widgets/AccountsIcons/accountsIcons.dart';
import '../../../../Component/widgets/button/defaultTextButton.dart';
import '../../../../Component/widgets/button/registeration_button.dart';
import '../../../../Component/widgets/textFrmField/dfaultTextFormField.dart';
import '../../../layOut/view.dart';
import '../../SignUp/signUpScreen.dart';
import 'curve.dart';

class LoginFormWithCurve extends StatelessWidget {
  LoginFormWithCurve({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 660.h,
      child: Stack(
        children: [
          const LoginCurve(),
          Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 35.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 110.h,
                  ),
                  Text(
                    "Log In ",
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Welcome back .Enter your credentials to access your account",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.grey,
                    ),
                  ),
                  /*SizedBox(
                    height: 55.h,
                  ),*/
                  Spacer(),
                  Text(
                    "Please enter your Username or Email address",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  DefaultFormField(
                    width: double.infinity,
                    height: 51.h,
                    controller: TextEditingController(),
                    type: TextInputType.emailAddress,
                    validate: () {},
                    hintText: "Email Address",
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    " Please enter your password",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  DefaultFormField(
                    width: double.infinity,
                    height: 51.h,
                    controller: TextEditingController(),
                    type: TextInputType.visiblePassword,
                    validate: () {},
                    hintText: "Password",
                    isPassword: true,
                    suffix: Icons.visibility_outlined,
                    suffixButtonPressed: () {},
                  ),
                  /*Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),*/
                  SizedBox(
                    height: 8.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: DefaultTextButton(
                      text: "Forget Password",
                      onPressed: () {
                      },
                      textColor: AppColors.grey,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  LayOutScreen()),
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
                    height: 8.h,
                  ),
                  AccountsIcons(
                    "log in",
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
                        text: "Sign Up",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
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
