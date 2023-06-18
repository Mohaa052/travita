import 'package:flutter/material.dart';

class InformationController {

  static const List listOfInformation = ['Days', 'Budget', 'City'];

  static const List listOfIconInformation = [
    Icons.calendar_month_outlined,
    Icons.monetization_on_rounded,
    Icons.location_city,
  ];

  static  List listOfTypeKeyboard=[
    dayTyp,
    budgetTyp,
    cityType,
  ];

  static  List listOfController = [daysController, budgetController, cityController];
}

TextEditingController daysController = TextEditingController();
TextEditingController budgetController = TextEditingController();
TextEditingController cityController = TextEditingController();

TextInputType dayTyp =TextInputType.number;
TextInputType budgetTyp =TextInputType.number;
TextInputType cityType =TextInputType.name;