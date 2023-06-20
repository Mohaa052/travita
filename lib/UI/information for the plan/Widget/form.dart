import 'package:flutter/material.dart';
import 'package:travita/Component/widgets/textFrmField/simple%20textFiels.dart';
import 'package:travita/UI/survey/controller/controller.dart';

import '../controller/controller.dart';

class AIPlanInformationForm extends StatelessWidget {
  const AIPlanInformationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: AIPlanSurveyController.get(context).formKey,
      child: Column(
        children: List.generate(
          3,
          (index) => SimpleTextFormFiled(
            controller:
                AIPlanSurveyController.get(context).textControllers[index],
            validate: (value) {
              if (value!.isEmpty) {
                return "Please enter your data";
              }
              return null;
            },
            icon: AIPlanSurveyController.get(context)
                .listOfIconInformation[index],
            type: AIPlanSurveyController.get(context).listOfInformation[index],
          ),
        ),
      ),
    );
  }
}
