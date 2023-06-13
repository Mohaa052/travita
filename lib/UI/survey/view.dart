import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travita/UI/survey/controller/controller.dart';
import 'package:travita/UI/survey/controller/states.dart';
import 'widgets/surveyButton.dart';

class SurveyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SurveyController>(
      create: (context) => SurveyController()..getSurvey(),
      child: Scaffold(
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
              height: MediaQuery.of(context).size.height / 1,
              child: BlocConsumer<SurveyController, SurveyStates>(
                listener: (context, state) {},
                builder: (context, state) =>
                    SurveyController.get(context).surveyModel != null
                        ? ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 20),
                            itemCount: SurveyController.get(context)
                                .surveyModel!
                                .items
                                .length,
                            itemBuilder: (context, index) =>
                                OneCategoryOfSurvey(
                                  index: index,
                                  nameOfCategory: SurveyController.get(context)
                                      .surveyModel!
                                      .items[index]
                                      .name,
                                  image: SurveyController.get(context)
                                      .surveyModel!
                                      .items[index]
                                      .image,
                                  imageId: SurveyController.get(context)
                                      .surveyModel!
                                      .items[index]
                                      .id
                                      .toString(),
                                ))
                        : const Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
