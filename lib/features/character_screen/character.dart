import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/widgets/app_button.dart';

import '../../core/app_colors.dart';
import '../complete_profile_screen/organization_profile/organization_profile.dart';
import '../complete_profile_screen/user_profile/screen.dart';
import '../welcome_screens/widgets/welcome_text.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 44.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Container(
              //       width: 24,
              //       height: 24,
              //       decoration: BoxDecoration(
              //         color: AppColors.white,
              //         borderRadius: BorderRadius.circular(15.sp),
              //         // boxShadow: [
              //         //   BoxShadow(
              //         //     color: AppColors.smoothGray,
              //         //     spreadRadius: 2,
              //         //   ),
              //         // ],
              //       ),
              //       child: Icon(
              //         Icons.arrow_back_rounded,
              //         size: 23,
              //         color: AppColors.black,
              //       )),
              // ),
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
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 41.h,
              ),
              WelcomeText(
                title: "Choose Your Character",
                height: 29.h,
                width: double.infinity,
                fontSize: 24.w,
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                width: 290.w,
                child: WelcomeText2(
                  title:
                      'Choose whether you are graduate/student or you are an organization/company.',
                  height: 50.h,
                  width: double.infinity,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Container(
                width: 280.w,
                height: 1.h,
                color: AppColors.grayA6,
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      RouteUtils.push(
                          context: context,
                          screen: CompleteUserProfileScreen());
                    },
                    child: Container(
                      width: 156.w,
                      height: 160.h,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(35.sp),
                        // boxShadow: [
                        //   BoxShadow(color: Color(0xFFD6D6D6), spreadRadius: 1.2),
                        // ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 29.h,
                          ),
                          Image(
                              image: AssetImage(
                                  "assets/images/graduation_image.png")),
                          SizedBox(
                            height: 10.h,
                          ),
                          WelcomeText(
                            title: "Graduate / Student",
                            height: 18.h,
                            width: double.infinity,
                            fontSize: 12.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  InkWell(
                    onTap: () {
                      RouteUtils.push(
                          context: context, screen: OrganizationProfile());
                    },
                    child: Container(
                      width: 156.w,
                      height: 160.h,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 29.h,
                          ),
                          Image(
                              image: AssetImage(
                                  "assets/images/company_image.png")),
                          SizedBox(
                            height: 10.h,
                          ),
                          WelcomeText(
                            title: "Organization / Company",
                            height: 18.h,
                            width: 155.w,
                            fontSize: 12.sp,
                          ),
                        ],
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
