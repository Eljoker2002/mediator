import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:mediator/features/welcome_screens/widgets/welcome_text.dart';
import 'package:mediator/widgets/app_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool value = false;
  bool visible = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 44.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: 22.w,
                    height: 22.w,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15.w),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.smoothGray, spreadRadius: 2)
                        ]),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 21.w,
                      color: AppColors.darkBlue,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 48.h,
                    width: 48.w,
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                  ),
                  Text(
                    "Mediator",
                    style: GoogleFonts.calistoga(
                      textStyle: TextStyle(
                        fontSize: 20.h,
                        color: AppColors.darkBlue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 29.h),
              WelcomeText(
                title: "Create New Account",
                height: 29.h,
                width: 242.w,
                fontSize: 24,
              ),
              SizedBox(
                height: 36.h,
              ),
              SizedBox(
                height: 40.h,
                child: TextFormField(
                  controller: emailcontroller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email must not be empty';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.lGray,
                      ),
                    ),
                    labelText: 'Email',
                    labelStyle: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: Color(0xFFA8A8A8), fontSize: 15),
                    ),
                    prefixIcon: Icon(Icons.email, color: Color(0xFFA8A8A8)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40.h,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password must not be empty';
                    } else if (value.length < 6) {
                      return 'password is too short';
                    }
                    return null;
                  },
                  controller: passcontroller,
                  obscureText: visible,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.lGray)),
                    labelText: 'Password',
                    labelStyle: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: Color(0xFFA8A8A8), fontSize: 15),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFFA8A8A8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visible = !visible;
                        });
                      },
                      icon: visible
                          ? const Icon(
                              Icons.visibility_off,
                              color: Color(0xFFA8A8A8),
                            )
                          : const Icon(
                              Icons.remove_red_eye,
                              color: AppColors.darkBlue,
                            ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: .8,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      value: value,
                      onChanged: (v) {
                        setState(() {
                          v = !value;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Remember me",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12.h,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0C002E),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 19.h,
              ),
              AppButton(
                title: "Sign up",
                onTap: () {},
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 102.w,
                    height: 1.h,
                    color: Color(0xFFF0F0F0),
                  ),
                  SizedBox(width: 12.w),
                  SizedBox(
                    width: 95.w,
                    child: Text(
                      "or continue with",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12.w,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF717171),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    width: 102.w,
                    height: 1.h,
                    color: Color(0xFFF0F0F0),
                  ),
                ],
              ),
              SizedBox(
                height: 26.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.smoothGray, spreadRadius: 1)
                        ]),
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                      size: 26.h,
                    ),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.smoothGray,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(6.w),
                      child: Image(
                        image: AssetImage(
                          "assets/images/google_logo.jpg",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.smoothGray,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Icon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                      size: 26.h,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ?",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12.w,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF9C9C9C),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    "Log in",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12.w,
                        fontWeight: FontWeight.w600,
                        color: AppColors.darkBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
