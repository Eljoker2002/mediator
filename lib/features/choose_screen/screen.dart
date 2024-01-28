// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:mediator/features/welcome_screens/widgets/welcome_text.dart';
// import 'package:mediator/widgets/app_button.dart';
// import '../../core/app_colors.dart';
//
// class ChooseScreen extends StatelessWidget {
//   const ChooseScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 44.h),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Container(
//                 width: 22.w,
//                 height: 22.w,
//                 decoration: BoxDecoration(
//                     color: AppColors.white,
//                     borderRadius: BorderRadius.circular(15.w),
//                     boxShadow: [
//                       BoxShadow(color: AppColors.smoothGray, spreadRadius: 2)
//                     ]),
//                 child: Icon(
//                   Icons.arrow_back_rounded,
//                   size: 21.w,
//                   color: AppColors.darkBlue,
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image(
//                   height: 48.h,
//                   width: 48.w,
//                   image: AssetImage(
//                     "assets/images/logo.png",
//                   ),
//                 ),
//                 Text(
//                   "Mediator",
//                   style: GoogleFonts.calistoga(
//                     textStyle: TextStyle(
//                       fontSize: 20.w,
//                       color: AppColors.darkBlue,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 41.h),
//             WelcomeText(
//               title: "Choose Your Character",
//               height: 29.h,
//               width: 274.w,
//               fontSize: 24,
//             ),
//             SizedBox(height: 18.h),
//             Container(
//               width: 296.w,
//               height: 58.h,
//               child: Center(
//                 child: Text(
//                   '''Choose whether you are looking for a job or
//     you are an organization/company that
//                            needs employees.''',
//                   style: GoogleFonts.poppins(
//                     textStyle: TextStyle(
//                       color: AppColors.gray,
//                       fontSize: 13,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 23.h),
//             Container(
//               width: double.infinity,
//               height: 1.h,
//               color: Color(0xFFF0F0F0),
//             ),
//             SizedBox(height: 24.h),
//             Row(
//               children: [
//                 Spacer(),
//                 Container(
//                   width: 156.w,
//                   height: 180.h,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: AppColors.lGray,
//                     ),
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                   child: Column(
//                     children: [
//                       SizedBox(height: 28.h),
//                       Image(
//                         image: AssetImage(
//                           "assets/images/student_image.png",
//                         ),
//                         fit: BoxFit.cover,
//                         width: 64.w,
//                         height: 64.h,
//                       ),
//                       SizedBox(height: 8.h),
//                       WelcomeText(
//                         title: "Graduate / Student",
//                         height: 18.h,
//                         width: 140.w,
//                         fontSize: 15,
//                       ),
//                       Container(
//                         width: 296.w,
//                         height: 58.h,
//                         child: Center(
//                           child: Text(
//                             '''I am looking for a
//   job opportunity.''',
//                             style: GoogleFonts.poppins(
//                               textStyle: TextStyle(
//                                 color: AppColors.gray,
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(width: 9.w),
//                 Container(
//                   width: 156.w,
//                   height: 180.h,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: AppColors.lGray,
//                     ),
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                   child: Column(
//                     children: [
//                       SizedBox(height: 28.h),
//                       Image(
//                         image: AssetImage(
//                           "assets/images/company_image.png",
//                         ),
//                         fit: BoxFit.cover,
//                         width: 64.w,
//                         height: 64.h,
//                       ),
//                       SizedBox(height: 8.h),
//                       WelcomeText(
//                         title: "Company",
//                         height: 18.h,
//                         width: 140.w,
//                         fontSize: 15,
//                       ),
//                       Container(
//                         width: 296.w,
//                         height: 58.h,
//                         child: Center(
//                           child: Text(
//                             '''Find someone to
//             hire.''',
//                             style: GoogleFonts.poppins(
//                               textStyle: TextStyle(
//                                 color: AppColors.gray,
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Spacer(),
//               ],
//             ),
//             SizedBox(height: 56.h),
//             AppButton(
//               onTap: (){},
//               title: 'Continue',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
