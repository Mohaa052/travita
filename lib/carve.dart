import 'package:flutter/material.dart';

import 'Component/colors/colors.dart';


class MYCurve extends StatelessWidget {
  const MYCurve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: AppColors.darkBlue,
                height: 400,
              ),
            ),
            ClipPath(
              clipper: NewCurve(),
              child: Container(
                color: AppColors.darkBlue,
                height: 500,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, size.height * 0.1822273);
    path0.cubicTo(
        size.width * -0.0153511,
        size.height * 0.2421818,
        size.width * 0.1440678,
        size.height * 0.3454848,
        size.width * 0.3079903,
        size.height * 0.3470152);
    path0.cubicTo(
        size.width * 0.4797821,
        size.height * 0.3472424,
        size.width * 0.4542615,
        size.height * 0.3465909,
        size.width * 0.7245278,
        size.height * 0.3473485);
    path0.cubicTo(
        size.width * 0.9121308,
        size.height * 0.3464091,
        size.width * 1.0171913,
        size.height * 0.4605000,
        size.width,
        size.height * 0.5016970);
    path0.quadraticBezierTo(size.width * 1.0111138, size.height * 0.5701515,
        size.width, size.height);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(size.width * -0.0082082, size.height * 0.2786212, 0,
        size.height * 0.1822273);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class NewCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width*0.9992333,size.height*0.9734000);
    path0.quadraticBezierTo(size.width*1.0027667,size.height*0.5667000,size.width*0.8333333,size.height*0.4968000);
    path0.lineTo(size.width*0.4400333,size.height*0.4967000);
    path0.lineTo(size.width*0.1667000,size.height*0.5001000);
    path0.quadraticBezierTo(size.width*0.0025000,size.height*0.4312000,0,size.height*0.0269000);
    path0.quadraticBezierTo(size.width*-0.0008333,size.height*0.1834000,0,size.height);
    path0.lineTo(size.width,size.height*0.9980000);
    path0.quadraticBezierTo(size.width*1.0034333,size.height*0.9919000,size.width*0.9992333,size.height*0.9734000);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}