// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:mediator/core/app_colors.dart';
// import 'package:mediator/core/navigator.dart';
// import 'package:mediator/core/validator_utils/validator_utils.dart';
// import 'package:mediator/features/log_in_screen/log_in.dart';
// import 'package:mediator/features/sign_up_screen/SignUpController.dart';
// import 'package:mediator/features/welcome_screens/widgets/welcome_text.dart';
// import 'package:mediator/widgets/app_button.dart';
// import '../../widgets/app_text_field.dart';
//
// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});
//
//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }
//
// class _SignupScreenState extends State<SignupScreen> {
//   bool visible = true;
//   bool value = false;
//   SignUpController controller = SignUpController();
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: controller.formKey,
//       child: Scaffold(
//         backgroundColor: AppColors.whiteF6,
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 18.w,
//             ),
//             child: Column(
//               children: [
//                 // Align(
//                 //   alignment: Alignment.centerLeft,
//                 //   child: Container(
//                 //     width: 22.w,
//                 //     height: 22.w,
//                 //     decoration: BoxDecoration(
//                 //       color: AppColors.white,
//                 //       borderRadius: BorderRadius.circular(15.w),
//                 //       boxShadow: [
//                 //         BoxShadow(
//                 //           color: AppColors.smoothGray,
//                 //           spreadRadius: 2,
//                 //         ),
//                 //       ],
//                 //     ),
//                 //     child: Icon(
//                 //       Icons.arrow_back_rounded,
//                 //       size: 21.w,
//                 //       color: AppColors.darkBlue,
//                 //     ),
//                 //   ),
//                 // ),
//                 SizedBox(height: 50.h),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image(
//                       height: 48.w,
//                       width: 48.w,
//                       fit: BoxFit.fill,
//                       image: AssetImage(
//                         "assets/images/logo.png",
//                       ),
//                     ),
//                     Text(
//                       "Mediator",
//                       style: GoogleFonts.calistoga(
//                         textStyle: TextStyle(
//                           fontSize: 20.sp,
//                           color: AppColors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 25.h),
//                 WelcomeText(
//                   title: "Create New Account",
//                   height: 29.h,
//                   width: 242.w,
//                   fontSize: 22.sp,
//                 ),
//                 SizedBox(height: 25.h),
//                 AppTextField(
//                   controller: controller.email,
//                   icon: Icons.email,
//                   labelText: 'Email',
//                   validator: ValidatorUtils.email,
//                 ),
//                 SizedBox(height: 24.h),
//                 AppTextField(
//                   controller: controller.password,
//                   obscureText: visible,
//                   icon: Icons.lock,
//                   validator: ValidatorUtils.password,
//                   labelText: 'Password',
//                   suffixIcon: IconButton(
//                     onPressed: () {
//                       setState(() {
//                         visible = !visible;
//                       });
//                     },
//                     icon: visible
//                         ? Icon(
//                             Icons.visibility_off,
//                             color: AppColors.grayCB,
//                           )
//                         : Icon(
//                             Icons.remove_red_eye,
//                             color: AppColors.gray8F,
//                           ),
//                   ),
//                 ),
//                 SizedBox(height: 24.h),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 16.w,
//                       height: 16.h,
//                       child: Transform.scale(
//                         scale: .8.sp,
//                         child: Checkbox(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(6.0),
//                             ),
//                           ),
//                           value: value,
//                           onChanged: (v) {
//                             setState(() {
//                               value = v!;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 7.w),
//                     Text(
//                       "Remember me",
//                       style: GoogleFonts.inter(
//                         textStyle: TextStyle(
//                           fontSize: 14.sp,
//                           fontWeight: FontWeight.w700,
//                           color: Color(0xFF0C002E),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 24.h),
//                 AppButton(
//                   title: "Sign up",
//                   onTap: () {
//                     // controller.signup(context);
//                   },
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 99.w,
//                       height: 1.h,
//                       color: AppColors.grayDE,
//                     ),
//                     SizedBox(width: 12.w),
//                     SizedBox(
//                       width: 100.w,
//                       child: Text(
//                         "or continue with",
//                         style: GoogleFonts.inter(
//                           textStyle: TextStyle(
//                             fontSize: 12.w,
//                             fontWeight: FontWeight.w600,
//                             color: AppColors.gray71,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 12.w),
//                     Container(
//                       width: 99.w,
//                       height: 1.h,
//                       color: AppColors.grayDE,
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 15.h),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 250.w,
//                       height: 42.h,
//                       decoration: BoxDecoration(
//                           color: AppColors.white,
//                           border: Border.all(
//                             width: 1.sp,
//                             color: AppColors.black,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                           boxShadow: [
//                             BoxShadow(
//                               color: AppColors.white,
//                               spreadRadius: 1,
//                             ),
//                           ]),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             FontAwesomeIcons.facebook,
//                             color: Colors.blue,
//                             size: 20.sp,
//                           ),
//                           SizedBox(width: 10.w),
//                           Text(
//                             "Continue with Facebook",
//                             style: GoogleFonts.poppins(
//                               textStyle: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     Container(
//                       width: 250.w,
//                       height: 42.h,
//                       decoration: BoxDecoration(
//                           color: AppColors.white,
//                           border: Border.all(
//                             width: 1.sp,
//                             color: AppColors.black,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                           boxShadow: [
//                             BoxShadow(
//                               color: AppColors.white,
//                               spreadRadius: 1,
//                             ),
//                           ]),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image(
//                             image: AssetImage(
//                               "assets/images/google_logo.jpg",
//                             ),
//                             width: 22.sp,
//                             height: 22.sp,
//                           ),
//                           SizedBox(width: 10.w),
//                           Text(
//                             "Continue with Google",
//                             style: GoogleFonts.poppins(
//                               textStyle: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     Container(
//                       width: 250.w,
//                       height: 42.h,
//                       decoration: BoxDecoration(
//                           color: AppColors.white,
//                           border: Border.all(
//                             width: 1.sp,
//                             color: AppColors.black,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                           boxShadow: [
//                             BoxShadow(
//                               color: AppColors.white,
//                               spreadRadius: 1,
//                             ),
//                           ]),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             FontAwesomeIcons.apple,
//                             color: AppColors.black,
//                             size: 22.sp,
//                           ),
//                           SizedBox(width: 10.w),
//                           Text(
//                             "Continue with Apple",
//                             style: GoogleFonts.poppins(
//                               textStyle: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Already have an account ?",
//                       style: GoogleFonts.inter(
//                         textStyle: TextStyle(
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w600,
//                           color: AppColors.gray71,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 3.w,
//                     ),
//                     InkWell(
//                       onTap: () => RouteUtils.push(
//                         context: context,
//                         screen: LoginScreen(),
//                       ),
//                       child: Text(
//                         "Log in",
//                         style: GoogleFonts.inter(
//                           textStyle: TextStyle(
//                             fontSize: 13.sp,
//                             fontWeight: FontWeight.w600,
//                             color: AppColors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
