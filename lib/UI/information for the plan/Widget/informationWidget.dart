import 'package:flutter/cupertino.dart';
import 'package:travita/Component/widgets/textFrmField/simple%20textFiels.dart';

class InformationItem extends StatelessWidget {
  const InformationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: [
        const Text("data"),
        SizedBox(
            width: MediaQuery.of(context).size.width/1.4,
            child: SimpleTextFormFiled(lable:"")),
      ],
    );
  }
}
