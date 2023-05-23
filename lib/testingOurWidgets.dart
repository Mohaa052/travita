import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/UI/choose_Ai_or_manual_plan/widgets/onePlanWidget.dart';
import 'package:travita/UI/onBoarding/controller.dart';
import 'Component/colors/colors.dart';
import 'Component/widgets/button/DefaultOutlindedButton.dart';
import 'Component/widgets/button/registeration_button.dart';
import 'Component/widgets/button/defaultTextButton.dart';
import 'Component/widgets/textFrmField/dfaultTextFormField.dart';

class Testing extends StatelessWidget {
  var controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 10.w,
              childAspectRatio: 2.w / 2.6.h,
            ),
            itemBuilder: (BuildContext context, int index) => OnePlanWidget(),
          ),
        ),
      ),
    );
  }
}

class TestingLoginCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = AppColors.darkBlue
      ..style = PaintingStyle.fill;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.quadraticBezierTo(
      0,
      size.height * 0.1600000,
      size.width * 0.2325581,
      size.height * 0.1613333,
    );
    /*path0.cubicTo(
        size.width * 0.3488372,
        size.height * 0.1613333,
        size.width * 0.5813953,
        size.height * 0.1613333,
        size.width * 0.6976744,
        size.height * 0.1613333);*/

    /*path0.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.1600000,
      size.width * 0.7674419,
      size.height * 0.1613333,
    );*/

    path0.lineTo(
      size.width * 0.7674419,
      size.height * 0.16113333,
    );

    path0.quadraticBezierTo(
      size.width,
      size.height * 0.1631733,
      size.width,
      size.height * 0.32,
    );
    path0.lineTo(
      size.width,
      size.height,
    );
    path0.lineTo(
      0,
      size.height,
    );
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TestingBoardingCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = AppColors.darkBlue
      ..style = PaintingStyle.fill;

    Path path0 = Path();
    path0.moveTo(
      size.width,
      0,
    );
    path0.quadraticBezierTo(
      size.width,
      size.height * 0.1600000,
      size.width * 0.7674419,
      size.height * 0.1600000,
    );

    /*path0.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.1600000,
      size.width * 0.2325582,
      size.height * 0.1600000,
    );*/

    path0.lineTo(
      size.width * 0.2325581,
      size.height * 0.1613333,
    );

    /*path0.cubicTo(
      size.width * 1,
      size.height * 0.2124632,
      size.width * 1,
      size.height * 0.2092842,
      size.width * 1,
      size.height * 0.2098105,
    );*/

    path0.quadraticBezierTo(
      0,
      size.height * 0.1600000,
      0,
      size.height * 0.32,
    );
    path0.lineTo(
      0,
      size.height,
    );
    path0.lineTo(
      size.width,
      size.height,
    );
    path0.lineTo(
      size.width,
      0,
    );
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
