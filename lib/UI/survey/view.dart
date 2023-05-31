import 'package:flutter/material.dart';
import 'widgets/surveyButton.dart';

class SurveyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "image/appBarLogo.png",
          width: 100,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height/1,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: 8,
              itemBuilder: (context, index) => OneCategoryOfSurvey(
                nameOfCategory: "Name of category",
                image: "https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium")
            ),
          ),
        ),
      ),
    );
  }
}
