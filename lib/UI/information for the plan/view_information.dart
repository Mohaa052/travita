import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/textFrmField/simple%20textFiels.dart';
import 'package:travita/UI/information%20for%20the%20plan/Widget/informationWidget.dart';

class InformationThePlan extends StatelessWidget {
  const InformationThePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listOfInformation=[
      'Days',
      'Money',
      'City'
    ];
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          ListView.separated(
            separatorBuilder: (context,index)=>SizedBox(height: 20,),
            itemCount: listOfInformation.length,
            itemBuilder: (context,index)=>InformationItem(),
          ) ,
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         SizedBox(
          //           width: MediaQuery.of(context).size.width/2.5,
          //           height: 70.h,
          //           child: SimpleTextFormFiled(lable: "Days",),
          //         ),
          //          SizedBox(
          //           width: MediaQuery.of(context).size.width/2.5,
          //           height: 70.h,
          //           child: SimpleTextFormFiled(lable: "Padget",),
          //         ),
          //       ],
          //     ),
          //     SizedBox(height: 10.h,),
          //     SizedBox(
          //       width: MediaQuery.of(context).size.width/2,
          //       height: 70.h,
          //       child: SimpleTextFormFiled(lable: "Name the city",),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
