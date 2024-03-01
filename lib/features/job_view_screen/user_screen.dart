import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';

class UserJob extends StatelessWidget {
  const UserJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 50.h,
              horizontal: 25.w,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 18.sp,
                ),
                SizedBox(width: 92.w,),
                Text(
                  "Job View",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: AppColors.blue0C,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h),
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
                        "UI/UX Designer Job",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.blue0C,
                            fontSize: 20.sp,
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

                        SizedBox(height: 28.h),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            "2SmartTech",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            "Cairo , Egypt",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            "7,000 - 10,000 LE",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
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
                            "Job description",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            '''-Lorem Ipsum is simply dummy text of the printing and typesetting industry.   
-Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

    ''',
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
                            "Requirement",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            '''-Lorem Ipsum is simply dummy text of the printing and typesetting industry.   
-Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

    ''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        //
                        SizedBox(height: 10.h,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: AppButton(
                            title: "Apply",
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
