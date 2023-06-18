// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:travita/Component/widgets/defaultText.dart';
//
// import '../../Component/colors/colors.dart';
// import '../../Component/widgets/category/category_of_type_the_favourit.dart';
//
// class ManuallyPlan extends StatelessWidget {
//   const ManuallyPlan({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         titleSpacing: 0,
//         title: Image.asset(
//           "image/appBarLogo.png",
//           width: 100,
//         ),
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//           ),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             DefaultText(
//               text: 'Your Trips',
//               textColor: AppColors.darkBlue,
//               fontSize: 32.sp,
//               fontWeight: FontWeight.w700,
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             /*Expanded(
//               child: ListView.separated(
//                 separatorBuilder: (context, index) => SizedBox(
//                   height: 10,
//                 ),
//                 itemCount: 10,
//                 itemBuilder: (context, index) => CategoryOfTypeTheFavourite(
//                   id: 0,
//                   image: 'image/alex.png',
//                   nameOfPlace: 'Abu Abbas',
//                   description:
//                       'We love Landowning! Our designers were using it for their projects ',
//                   favoriteType: "df",
//                   rate: 3,
//                 ),
//               ),
//             ),*/
//           ],
//         ),
//       ),
//     );
//   }
// }
