import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/navigator.dart';

import '../../core/app_colors.dart';
import '../../core/validator_utils/validator_utils.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';
import '../character_screen/character.dart';
import '../sign_up_screen/controller.dart';
import '../welcome_screens/widgets/welcome_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visible = true;
  bool value = false;
  SignUpController controller = SignUpController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Scaffold(
        backgroundColor: AppColors.whiteF6,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18.w,
            ),
            child: Column(
              children: [
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Container(
                //     width: 22.w,
                //     height: 22.w,
                //     decoration: BoxDecoration(
                //       color: AppColors.white,
                //       borderRadius: BorderRadius.circular(15.w),
                //       boxShadow: [
                //         BoxShadow(
                //           color: AppColors.smoothGray,
                //           spreadRadius: 2,
                //         ),
                //       ],
                //     ),
                //     child: Icon(
                //       Icons.arrow_back_rounded,
                //       size: 21.w,
                //       color: AppColors.darkBlue,
                //     ),
                //   ),
                // ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 48.w,
                      width: 48.w,
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/images/logo.png",
                      ),
                    ),
                    Text(
                      "Mediator",
                      style: GoogleFonts.calistoga(
                        textStyle: TextStyle(
                          fontSize: 20.sp,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                WelcomeText(
                  title: "Create New Account",
                  height: 29.h,
                  width: 242.w,
                  fontSize: 22.sp,
                ),
                SizedBox(height: 25.h),
                AppTextField(
                  onSaved: (v) => controller.email = v,
                  icon: Icons.email,
                  labelText: 'Email',
                  validator: ValidatorUtils.emailForLogin,
                ),
                SizedBox(height: 24.h),
                AppTextField(
                  onSaved: (v) => controller.password = v,
                  obscureText: visible,
                  icon: Icons.lock,
                  validator: ValidatorUtils.passwordForLogin,
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    icon: visible
                        ? Icon(
                            Icons.visibility_off,
                            color: AppColors.grayCB,
                          )
                        : Icon(
                            Icons.remove_red_eye,
                            color: AppColors.gray3F,
                          ),
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 16.w,
                      height: 16.h,
                      child: Transform.scale(
                        scale: .8.sp,
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6.0),
                            ),
                          ),
                          value: value,
                          onChanged: (v) {
                            setState(() {
                              value = v!;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 7.w),
                    Text(
                      "Remember me",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0C002E),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                AppButton(
                  title: "Log in",
                  onTap: () {
                    logIn();
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 99.w,
                      height: 1.h,
                      color: AppColors.grayDE,
                    ),
                    SizedBox(width: 12.w),
                    SizedBox(
                      width: 100.w,
                      child: Text(
                        "or continue with",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 12.w,
                            fontWeight: FontWeight.w600,
                            color: AppColors.gray71,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Container(
                      width: 99.w,
                      height: 1.h,
                      color: AppColors.grayDE,
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 250.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(
                            width: 1.sp,
                            color: AppColors.black,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.white,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.blue,
                            size: 20.sp,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Continue with Facebook",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 250.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(
                            width: 1.sp,
                            color: AppColors.black,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.white,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/google_logo.jpg",
                            ),
                            width: 22.sp,
                            height: 22.sp,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Continue with Google",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 250.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(
                            width: 1.sp,
                            color: AppColors.black,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.white,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.apple,
                            color: AppColors.black,
                            size: 22.sp,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Continue with Apple",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.gray71,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    InkWell(
                      onTap: () => RouteUtils.push(
                        context: context,
                        screen: LoginScreen(),
                      ),
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> logIn() async {
    controller.formKey.currentState!.save();
    if (!controller.formKey.currentState!.validate()) {
      return;
    }
    print({
      "Email": controller.email,
      "Password": controller.password,
    });
    RouteUtils.push(context: context, screen: CharacterScreen());
  }
}

// Scaffold(
// backgroundColor: AppColors.whiteF6,
// body: SingleChildScrollView(
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 44.h),
// child: Column(
// children: [
// // Align(
// //   alignment: Alignment.centerLeft,
// //   child: InkWell(
// //     onTap: () => RouteUtils.pop(context: context),
// //     child: Container(
// //         width: 22.w,
// //         height: 22.w,
// //         decoration: BoxDecoration(
// //           color: AppColors.white,
// //           borderRadius: BorderRadius.circular(15.w),
// //           // boxShadow: [
// //           //   BoxShadow(
// //           //     color: AppColors.smoothGray,
// //           //     spreadRadius: 2,
// //           //   )
// //           // ],
// //         ),
// //         child: Icon(
// //           Icons.arrow_back_rounded,
// //           size: 21.sp,
// //           color: AppColors.black,
// //         )),
// //   ),
// // ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Image(
// height: 48.w,
// width: 48.w,
// image: AssetImage(
// "assets/images/logo.png",
// ),
// ),
// Text(
// "Mediator",
// style: GoogleFonts.calistoga(
// textStyle: TextStyle(
// fontSize: 20.sp,
// color: AppColors.gray3F,
// ),
// ),
// ),
// ],
// ),
// SizedBox(height: 30.h),
// WelcomeText(
// title: "Login to Your Account",
// height: 29.h,
// width: double.infinity,
// fontSize: 22.sp,
// ),
// SizedBox(
// height: 39,
// ),
// SizedBox(
// height: 40.h,
// child: TextFormField(
// controller: emailcontroller,
// validator: (value) {
// if (value!.isEmpty) {
// return 'Email must not be empty';
// }
// return null;
// },
// keyboardType: TextInputType.emailAddress,
// decoration: InputDecoration(
// fillColor: AppColors.white,
// filled: true,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(8),
// borderSide: BorderSide(
// color: AppColors.white,
// ),
// ),
// labelText: 'Email',
// labelStyle: GoogleFonts.inter(
// textStyle: TextStyle(
// color: AppColors.grayB7,
// fontSize: 15,
// fontWeight: FontWeight.w400,
// ),
// ),
// prefixIcon: Icon(
// Icons.email,
// color: AppColors.grayCB,
// ),
// ),
// ),
// ),
// const SizedBox(
// height: 20,
// ),
// SizedBox(
// height: 40.h,
// child: TextFormField(
// validator: (value) {
// if (value!.isEmpty) {
// return 'Password must not be empty';
// } else if (value.length < 6) {
// return 'password is too short';
// }
// return null;
// },
// controller: passcontroller,
// obscureText: visible,
// keyboardType: TextInputType.number,
// decoration: InputDecoration(
// fillColor: AppColors.white,
// filled: true,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(8),
// borderSide: BorderSide(
// color: AppColors.white,
// ),
// ),
// labelText: 'Password',
// labelStyle: GoogleFonts.inter(
// textStyle: TextStyle(
// color: AppColors.grayB7,
// fontSize: 15,
// fontWeight: FontWeight.w400),
// ),
// prefixIcon: Icon(
// Icons.lock,
// color: AppColors.grayCB,
// ),
// suffixIcon: IconButton(
// onPressed: () {
// setState(() {
// visible = !visible;
// });
// },
// icon: visible
// ? const Icon(
// Icons.visibility_off,
// color: AppColors.grayCB,
// )
// : const Icon(
// Icons.remove_red_eye,
// color: AppColors.black,
// ),
// ),
// ),
// ),
// ),
// SizedBox(
// height: 24,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Transform.scale(
// scale: .8.w,
// child: Checkbox(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(6.0),
// ),
// ),
// value: value,
// onChanged: (v) {
// setState(() {
// value = v!;
// });
// },
// ),
// ),
// Text(
// "Remember me",
// style: GoogleFonts.inter(
// textStyle: TextStyle(
// fontWeight: FontWeight.w700,
// color: AppColors.blue0C,
// ),
// ),
// ),
// ],
// ),
// SizedBox(
// height: 24,
// ),
// AppButton(
// title: "Log in",
// onTap: () {},
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// TextButton(
// onPressed: () {},
// child: Text(
// "Forgotten password?",
// style: GoogleFonts.inter(
// textStyle: TextStyle(
// fontSize: 12.w,
// fontWeight: FontWeight.w600,
// color: Color(0xFFF10E00),
// ),
// ),
// ),
// ),
// SizedBox(width: 5.w),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// width: 102.w,
// height: 1.h,
// color: Color(0xFFF0F0F0),
// ),
// SizedBox(width: 12.w),
// SizedBox(
// width: 95.w,
// child: Text(
// "or continue with",
// style: GoogleFonts.inter(
// textStyle: TextStyle(
// fontSize: 12.w,
// fontWeight: FontWeight.w600,
// color: Color(0xFF717171),
// ),
// ),
// ),
// ),
// SizedBox(width: 12.w),
// Container(
// width: 102.w,
// height: 1.h,
// color: Color(0xFFF0F0F0),
// ),
// ],
// ),
// SizedBox(
// height: 26.h,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// width: 40.w,
// height: 40.w,
// decoration: BoxDecoration(
// color: AppColors.white,
// borderRadius: BorderRadius.circular(8),
// boxShadow: [
// BoxShadow(
// color: AppColors.black,
// spreadRadius: 1,
// ),
// ]),
// child: Icon(
// FontAwesomeIcons.facebook,
// color: Colors.blue,
// size: 27.sp,
// ),
// ),
// SizedBox(
// width: 18.w,
// ),
// Container(
// width: 40.w,
// height: 40.w,
// decoration: BoxDecoration(
// color: AppColors.white,
// borderRadius: BorderRadius.circular(8),
// boxShadow: [
// BoxShadow(
// color: AppColors.black,
// spreadRadius: 1,
// ),
// ],
// ),
// child: Padding(
// padding: EdgeInsets.all(6.w),
// child: Image(
// image: AssetImage(
// "assets/images/google_logo.jpg",
// ),
// ),
// ),
// ),
// SizedBox(width: 18.w),
// Container(
// width: 40.w,
// height: 40.w,
// decoration: BoxDecoration(
// color: AppColors.white,
// borderRadius: BorderRadius.circular(8),
// boxShadow: [
// BoxShadow(
// color: AppColors.black,
// spreadRadius: 1,
// )
// ]),
// child: Icon(
// FontAwesomeIcons.apple,
// color: Colors.black,
// size: 30.sp,
// ),
// ),
// ],
// ),
// SizedBox(height: 28.h),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text(
// "Already have an account ?",
// style: GoogleFonts.inter(
// textStyle: TextStyle(
// fontSize: 12.sp,
// fontWeight: FontWeight.w600,
// color: Color(0xFF9C9C9C),
// ),
// ),
// ),
// SizedBox(
// width: 3.w,
// ),
// InkWell(
// onTap: () => RouteUtils.pop(context: context),
// child: Text(
// "Sign up",
// style: GoogleFonts.inter(
// textStyle: TextStyle(
// fontSize: 12.sp,
// fontWeight: FontWeight.w600,
// color: AppColors.black,
// ),
// ),
// ),
// ),
// ],
// ),
// ],
// ),
// ),
// ),
// );
