import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/app_colors.dart';

class ApplicationScreen2 extends StatelessWidget {
  const ApplicationScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Application", style: GoogleFonts.inter(
          textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            color: AppColors.blue0C,
          ),
        ),),
        actions: [
          Icon(PhosphorIcons.chatCircleDots(PhosphorIconsStyle.fill),color:AppColors.black ),
          SizedBox(
            width: 2.w,
          ),
          Icon(Icons.search,color:AppColors.black ,),
        ],

      ),
      body: Padding(
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
                Image(
                  image: AssetImage("assets/images/InnovaDigits.png"),
                  width: 60.w,
                  height: 50.h,
                ),
                SizedBox(width: 7.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Row(
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
                        SizedBox(width:100.w),
                        Icon(Icons.arrow_forward_ios_sharp,size: 17.sp,)
                      ],
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

              ],

            ),
          ),
        ),
      ),
    );
  }
}
