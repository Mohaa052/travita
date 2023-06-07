import 'package:flutter/material.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/UI/Details/view.dart';

class Ex extends StatelessWidget {
  const Ex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            defaultNavigator(
                context,
                DetailsScreen(
                    image: "https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium",
                    name: "dog",
                    description: 'vvder',
                    type: 'type',
                    id: 'id'));
          },
          child: Text("details"),
        ),
      ),
    );
  }
}
