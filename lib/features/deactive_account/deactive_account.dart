import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';

class DeactivateAccount extends StatelessWidget {
  const DeactivateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding:EdgeInsets.only(right: 10.w,left: 10.w,top: 35.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back_ios),
            SizedBox(height: 10.h,),
            Center(
              child: Text(
                "Deactivate Account?",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Text(
              textAlign: TextAlign.center,
              "You will lose all completed profiles and also all your applications.",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.gray83,
                ),
              ),
            ),
            SizedBox(height: 29.h,),
            Padding(
        padding: EdgeInsets.only(bottom: 10.h,right: 10.w,left: 10.w),
        child: Container(
          height: 80.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(6.sp),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
            child: Row(
              children: [
                SizedBox(
                  width: 50.w,
                  child: Image(
                    image: AssetImage("assets/images/smarttech2.png"),
                    width: 60.w,
                    height: 50.h,
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UI/UX Designer Job",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "SmartTech",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.gray8F,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Container(
                      color: AppColors.lGreen,
                      child: Text(
                        "Application Accepted",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.green,
                            fontSize: 8.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 80.w,),
                Padding(
                  padding:EdgeInsets.only(bottom: 40.h),
                  child: Icon(Icons.arrow_forward_ios_sharp,size: 20.sp,),
                ),
              ],
            ),
          ),
        ),
        ),SizedBox(height: 40.h,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 35.w),
              child: AppButton(
                title: "Deactivate",
                radius: 12.sp,
                onTap: () {},
                color: AppColors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
