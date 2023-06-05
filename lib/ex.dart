import 'package:flutter/material.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/UI/Details/view.dart';
import 'package:travita/UI/Details/widget/more_details.dart';

class Ex extends StatelessWidget {
  List listOfDetail = [
    'Name',
    'Phone Number',
    'Email address',
    'Rating',
    'Number of Stars',
    'Location',
    'website',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Image.network("https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium"),
            TextButton(
              onPressed: () {
                defaultNavigator(
                    context,
                    DetailsScreen(
                      image: "https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium",
                      name: "dog",
                      description: "the dog is very cute",
                      type: "hotel",
                      id: "232",
                    ));
              },
              child: Text("dtails") , ),
            CircleAvatar(
              backgroundColor: AppColors.grey,
              child: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => SimpleDialog(
                              backgroundColor: AppColors.white,
                              children: [
                                MoreDetails(
                                  listOfDetails: listOfDetail,
                                ),

                              ]));
                },
                icon: const Icon(
                  Icons.expand_more,
                  color: AppColors.darkOrange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
