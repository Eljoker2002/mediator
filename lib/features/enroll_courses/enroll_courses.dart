import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';

class EnrollScreen extends StatelessWidget {
  const EnrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 50.h,
              horizontal: 25.w,
            ),
            child: Icon(
              Icons.arrow_back_ios,
              size: 18.sp,
            ),
          ),
          SizedBox(height: 50.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.sp),
                  topRight: Radius.circular(50.sp),
                ),
              ),
              width: double.infinity,
              height:double.infinity,
              child: Column(
                children: [
                  Align(
                    child: Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Text(
                        "UI Design Course",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.blue0C,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(),
                      children: [
                        SizedBox(height: 6.h),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            "25 Hours 30 Mins",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            "Udacity",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Center(
                          child: Container(
                            height: 1.h,
                            width: 295.w,
                            color: AppColors.gray8F,
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            "2The UI Design Course is a structured program aimed at equipping participan with the knowledge and skills necessary create exceptional digital.",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1.h,
                              width: 100.w,
                              color: AppColors.gray8F,
                            ),
                            SizedBox(width: 7.w),
                            Text(
                              "Instructor",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: AppColors.gray8F,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(width: 7.w),
                            Container(
                              height: 1.h,
                              width: 100.w,
                              color: AppColors.gray8F,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: Container(
                            width: 340.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.sp),
                              color: AppColors.grayF0,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Image(
                                      image: AssetImage(
                                    "assets/images/ion_person-circle (1).png",
                                  )),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Mohamed Gohary",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.black,
                                            ),
                                          ),
                                        ),
                                       Row(
                                         children: [
                                           Padding(
                                             padding: EdgeInsets.only(right: 70.w),
                                             child: Text(
                                               "60+Course",
                                               style: GoogleFonts.poppins(
                                                 textStyle: TextStyle(
                                                   fontSize: 11.sp,
                                                   fontWeight: FontWeight.w500,
                                                   color: AppColors.gray83,
                                                 ),
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                        SizedBox(height: 4.h),
                                        Padding(
                                          padding:  EdgeInsets.only(right: 50.w),
                                          child: Text(
                                            "Course Review",
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.gray83,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 61.w,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                        SizedBox(height: 20.h,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: AppButton(
                            title: "Enroll course",
                            onTap: () {},
                            color: AppColors.pink,
                            radius: 12.sp,
                          ),
                        ),
                        SizedBox(height: 30.h,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
