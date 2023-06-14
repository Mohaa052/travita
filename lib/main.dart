import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/UI/REGISTERATION/LogIN/view.dart';
import 'package:travita/UI/Search/view_search.dart';
import 'package:travita/UI/Splash/splash.dart';
import 'package:travita/UI/ai_plan/view.dart';
import 'package:travita/UI/category_of_manually_plan/view.dart';
import 'package:travita/UI/final_plan/view.dart';
import 'package:travita/UI/information%20for%20the%20plan/view_information.dart';
import 'package:travita/UI/layOut/view.dart';
import 'package:travita/UI/survey/view.dart';
import 'package:travita/carve.dart';
import 'package:travita/UI/layOut/view.dart';
import 'package:travita/core/app_controller/appController.dart';
import 'package:travita/core/app_controller/appStates.dart';
import 'package:travita/firebase_options.dart';
import 'UI/more_places/view.dart';
import 'core/database/remote/dioHelper/dioHelper.dart';
import 'ex.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  // Disable screen rotation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(BlocProvider(
    create: (context) => AppController(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppController, AppStates>(
      buildWhen: (previousState, currentState) => false,
      listener: (context, state) {},
      builder: (context, state) => ScreenUtilInit(
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
        child: const InformationThePlan(),
      ),
    );
  }
}

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}
