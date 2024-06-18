import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';

class ApplicationStatus extends StatelessWidget {
  const ApplicationStatus({super.key});

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
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 18.sp,
                ),
                SizedBox(width: 92.w,),
                Text(
                  "Application",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: AppColors.blue0C,
                      fontSize: 18.sp,
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
              child: Padding(
                padding:EdgeInsets.only(top: 59.h),
                child: Column(
                  children: [
                    Container(
                      width:280.w,
                      height: 154.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        border: Border.all(color: AppColors.grayA6)
                      ),
                      child: Padding(
                        padding:EdgeInsets.only(top: 25.h),
                        child: Column(
                          children: [
                            Text(
                              "UI/UX Designer Internship",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: AppColors.blue0C,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),SizedBox(height: 8.h,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.w),
                              child: Divider(color:AppColors.grayB7 ,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 160.w),
                              child: Text(
                                "CodeSoft",
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
                              padding: EdgeInsets.only(right: 180.w),
                              child: Text(
                                "Online",
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
                              padding: EdgeInsets.only(right: 100.w),
                              child: Text(
                                "Non Refundable",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: AppColors.gray8F,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    Text(
                      "Your Application Status",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: AppColors.gray83,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    AppButton(
                      title: "Application Pending",
                      onTap: () {},
                      textColor:AppColors.yellow ,
                      color: AppColors.yellowFF,
                      radius: 15.sp,
                    ),
                    SizedBox(height: 50.h,),
                    AppButton(
                      title: "Waiting...",
                      onTap: () {},
                      color: AppColors.black,
                      radius: 12.sp,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
