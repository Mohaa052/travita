import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/UI/Home/view.dart';
import 'package:travita/UI/layOut/cubit/states.dart';
import 'package:travita/UI/layOut/view.dart';
import 'package:travita/core/app_constants/constants.dart';
import 'package:travita/core/database/remote/dioHelper/endpoints.dart';

import '../../../core/app_controller/appController.dart';
import '../../../core/app_controller/appStates.dart';
import '../../../core/database/remote/dioHelper/dioHelper.dart';
import '../model.dart';

class LoginController extends AppController {
  static LoginController get(context) => BlocProvider.of(context);

  late final GlobalKey<FormState> formKey = GlobalKey();
  late final TextEditingController emailController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();

  late List<bool> validFormFields = [
    true,
    true,
  ];

  late bool obSecure = false;

  @override
  void changePasswordVisibility() {
    obSecure = !obSecure;
    super.changePasswordVisibility();
  }
}
