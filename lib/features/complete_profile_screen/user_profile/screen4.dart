import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../core/app_colors.dart';
import '../../search_screen/search_screen.dart';
import '../../welcome_screens/widgets/welcome_text.dart';

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 44.h),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 20.sp,
                  color: AppColors.black,
                ),
                SizedBox(width: 65.w),
                WelcomeText(
                  title: "Profile",
                  height: 24.h,
                  width: 162.w,
                  fontSize: 18.sp,
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Container(
        width: 364.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
          color: AppColors.white,
        ),
        child: Row(
          children: [
            SizedBox(width: 10.w,),
            SizedBox(
              width: 39.sp,
              child: Image(
                  image: AssetImage(
                    "assets/images/person-circle.png",
                  )),
            ),
            SizedBox(width: 10.w,),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "NAME",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Text(
                   "Job tittle",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.gray83,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 61.w,),
          ],
        )
        ),
            SizedBox(height: 16.h,),
            RefactorProfile2(text1: "Expected Salary",image: AssetImage("assets/images/money_bag.png"),),
            SizedBox(height: 16.h,),
            RefactorProfile2(text1: "Projects",image: AssetImage("assets/images/projects_image.png"),),
            SizedBox(height: 16.h,),
            RefactorProfile2(text1: "Certification and Licenses",image: AssetImage("assets/images/certification.png"),),
            SizedBox(height: 16.h,),
            RefactorProfile2(text1: "Professional Exams",image: AssetImage("assets/images/exams.png"),),
            SizedBox(height: 16.h,),
            RefactorProfile2(text1: "Awards & Achievements",image: AssetImage("assets/images/basil_award-solid.png"),),
            SizedBox(height: 16.h,),
            RefactorProfile2(text1: "Seminars & Training",image: AssetImage("assets/images/training.png"),),
            SizedBox(height: 16.h,),
            RefactorProfile2(text1: "My CV",image: AssetImage("assets/images/mycv.png"),),


          ]),
      ) );
  }
}

class RefactorProfile2 extends StatelessWidget {
  final String text1;
  final ImageProvider image;
  const RefactorProfile2({
    Key? key,
    required this.text1,
    required this.image,

  });

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 364.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
          color: AppColors.white,
        ),
        child: Row(
          children: [
            SizedBox(width: 20.w,),
            SizedBox(
              width: 20.sp,
              child: Image(image: image),
              ),
            SizedBox(width: 14.w,),
            Text(
            text1,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
          ],
        )
    );
  }
}
