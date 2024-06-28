import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/organization_profile.dart';
import 'package:mediator/features/log_in_screen/login_api_forCompany.dart';
import '../../core/app_colors.dart';
import '../../core/validator_utils/validator_utils.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';
import '../character_screen/character.dart';
import '../complete_profile_screen/organization_profile/OrganizationSignUpController.dart';
import '../welcome_screens/widgets/welcome_text.dart';

class LoginScreenForCompany extends StatefulWidget {
  const LoginScreenForCompany({super.key});

  @override
  State<LoginScreenForCompany> createState() => _LoginScreenForCompanyState();
}

class _LoginScreenForCompanyState extends State<LoginScreenForCompany> {
  bool visible = true;
  bool value = false;
  LoginApiForCompany controller = LoginApiForCompany();
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
                SizedBox(height: 70.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 45.w,
                      width: 48.w,
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/images/logo.png",
                      ),
                    ),
                    SizedBox(width: 10.w),
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
                SizedBox(height: 60.h),
                WelcomeText(
                  title: "Login",
                  height: 29.h,
                  width: 242.w,
                  fontSize: 25.sp,
                ),
                SizedBox(height: 30.h),
                AppTextField(
                  controller: controller.email,
                  icon: Icons.email,
                  labelText: 'Email',
                  validator: ValidatorUtils.required,
                ),
                SizedBox(height: 24.h),
                AppTextField(
                  controller: controller.password,
                  obscureText: visible,
                  icon: Icons.lock,
                  validator: ValidatorUtils.required,
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
                            color: AppColors.gray8F,
                          ),
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(height: 24.h),
                AppButton(
                  title: "Log in",
                  onTap: () {
                    controller.getUser(context);
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
                        screen: OrganizationProfile(),
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
}
