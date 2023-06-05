import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/defaultText.dart';
import 'package:travita/UI/google_map/view_googleMap.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreDetails extends StatelessWidget {
  List listOfDetails;

  MoreDetails({super.key, required this.listOfDetails});

  @override
  Widget build(BuildContext context) {
    List onTaps =[
      (){},
      (){},
      (){},
      (){},
      (){},
      (){
        defaultNavigator(
            context,
            GoogleMapScreen(
              lt: 31.260976,
              lg: 32.306976,
            ));
      },
      (){
        String webSite = 'google.com';
        _launchUrl(Uri _url) async {
          if (!await launchUrl(_url)) {
            throw Exception('Could not launch $_url');
          }
        }
        final Uri _url = Uri.parse(webSite);
        _launchUrl(_url);
      },
    ];
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.5,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: 10.w,
          ),
          itemCount: listOfDetails.length,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultText(
                text: "${listOfDetails[index]} :",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.darkBlue,
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: onTaps[index],
                    child: DefaultText(
                      text: "Fort Quite ",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      textColor: AppColors.darkBlue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}





