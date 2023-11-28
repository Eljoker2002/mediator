import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/widgets/app_button.dart';

import '../../core/app_colors.dart';
import '../welcome_screens/widgets/welcome_text.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 44.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: AppColors.smoothGray, spreadRadius: 2)
                      ]),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 23,
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
            SizedBox(
              height: 41.h,
            ),
            WelcomeText(
              title: "Choose Your Character",
              height: 29.h,
              width: 274.w,
              fontSize: 24.w,
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
              height: 58.h,
              width: 290.w,
              child: Text(
                "",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontSize: 13.h,
                      fontWeight: FontWeight.w600,
                      color: AppColors.gray),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 156.w,
                  height: 160.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFD6D6D6), spreadRadius: 1.2),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 29.h,
                      ),
                      Image(
                          image:
                              AssetImage("assets/images/graduation_image.png")),
                      SizedBox(
                        height: 10.h,
                      ),
                      WelcomeText(
                          title: "Graduate / Student",
                          height: 18.h,
                          width: 140.w,
                          fontSize: 15.w),
                    ],
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                Container(
                  width: 156.w,
                  height: 160.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFD6D6D6), spreadRadius: 1.2),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 29.h,
                      ),
                      Image(
                          image: AssetImage("assets/images/company_image.png")),
                      SizedBox(
                        height: 10.h,
                      ),
                      WelcomeText(
                          title: "Company",
                          height: 18.h,
                          width: 140.w,
                          fontSize: 15.w),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 56.h,
            ),
            AppButton(title: "Continue", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
