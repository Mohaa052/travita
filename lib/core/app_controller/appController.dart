import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/UI/layOut/view.dart';
import 'package:travita/core/app_constants/constants.dart';

import '../../UI/REGISTERATION/model.dart';
import '../database/remote/dioHelper/dioHelper.dart';
import '../database/remote/dioHelper/endpoints.dart';
import 'appStates.dart';

class AppController extends Cubit<AppStates> {
  AppController() : super(AppInitialState());

  static AppController get(context) => BlocProvider.of(context);
  late final GoogleSignIn googleSignIn = GoogleSignIn();

  late final UserModel userModel;

  void googleLogin({
    required BuildContext context,
  }) {
    emit(LoginLoadingState());
    googleSignIn.signIn().then((value) {
      AppConstants.name = value!.displayName!;
      defaultNavigator(context, LayOutScreen());
      emit(LoginSuccessState());
    }).catchError((error) {
      emit(LoginErrorState());
    });
  }

  void logIn({
    required BuildContext context,
    required String email,
    required String password,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
      baseUrl: AppConstants.baseUrlAuth,
      url: LOGIN,
      data: {
        "email": email,
        "password": password,
      },
    ).then((value) {
      userModel = UserModel.fromJson(value!.data);
      AppConstants.accessToken = userModel.accessToken;
      AppConstants.name = userModel.user.firstName;
      print(AppConstants.accessToken);
      emit(LoginSuccessState());
      defaultNavigator(context, LayOutScreen());
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrorState());
    });
  }

  bool isValidPassword({required String password}) {
    // Check the length of the input.
    if (password.length < 8) {
      return false;
    }

    // Check if the password contains only alphabets.
    final isAlphabetic = RegExp(r'^[a-zA-Z]+$').hasMatch(password);
    if (isAlphabetic) {
      return false;
    }

    // Check if the password contains only digits.
    final isNumeric = int.tryParse(password) != null;
    if (isNumeric) {
      return false;
    }

    // All conditions passed, so the passwordController.text is valid.
    return true;
  }

  bool isValidEmail({required String email}) {
    final regex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return regex.hasMatch(email);
  }

  void changePasswordVisibility() {
    emit(ChangVisibilityState());
  }

  void formFieldIsNotValid() {
    emit(NotValidState());
  }
}
