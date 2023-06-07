import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travita/Component/widgets/button/default_button.dart';
import 'package:travita/UI/Details/widget/show_model_sheet/check_box_item.dart';
import '../../../../Component/colors/colors.dart';
import '../../../../Component/widgets/defaultText.dart';
import 'name of trip.dart';


class ShowModelSheet extends StatefulWidget {
  const ShowModelSheet({Key? key}) : super(key: key);

  @override
  State<ShowModelSheet> createState() => _ShowModelSheetState();
}

class _ShowModelSheetState extends State<ShowModelSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.5,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                        physics:
                        const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => SizedBox(height: 0.h),
                        itemCount: 3,
                        itemBuilder: (context, index) =>
                            // Text("data"),
                         CheckBoxItem(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return const NameOfTrip();
                        },
                      );
                      // showDialog(
                      //   context: context,
                      //   builder: (BuildContext context) => const SimpleDialog(
                      //     backgroundColor: AppColors.white,
                      //     children: [
                      //       NameOfTrip(),
                      //     ],
                      //   ),
                      // );
                    }, child: DefaultText(
                    text: "Create a trip",
                    textColor: AppColors.darkOrange,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  ),
                 DefaultButton(
                   fontWeight: FontWeight.bold,
                     fontSize: 18,
                     borderRadius: 10,
                     opacity: 1,
                     onPressed: (){},
                     width: 100,
                   height: 36,
                   backgroundColor: AppColors.darkBlue,
                   text: "Done",
                 ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}