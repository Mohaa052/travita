import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';


import 'UI/Home/view.dart';
import 'UI/Splash/splash.dart';
import 'UI/ai_plan/view.dart';
import 'UI/layOut/view.dart';
import 'UI/onBoarding/widgets/onBoardingThree.dart';
import 'UI/onBoarding/view.dart';
import 'ex.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,
            color: AppColors.darkBlue,
            titleTextStyle: TextStyle(
              color: AppColors.darkOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: child,
      ),
      child: LayOutScreen(),
    );
  }
}
