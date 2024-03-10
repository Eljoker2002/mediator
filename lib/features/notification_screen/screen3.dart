import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/dimensions/dimensions.dart';

import '../../core/app_colors.dart';

class LinkedAccounts extends StatefulWidget {
  const LinkedAccounts({super.key});

  @override
  State<LinkedAccounts> createState() => _LinkedAccountsState();
}

class _LinkedAccountsState extends State<LinkedAccounts> {
  bool value1=false;
  bool value2=false;
  bool value3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.only(top: 55.h, left: 20.w),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios),
                SizedBox(width: 70.w),
                Text(
                  textAlign: TextAlign.center,
                  "Linked Accounts",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blue0C,
                    ),
                  ),
                ),
              ],
            ),SizedBox(height: 30.h,),
            Row(
                children: [
                  Icon(Icons.facebook,color: AppColors.blue06,size: 32.sp,),
                  SizedBox(width: 8.w,),
                  Text(
                    "Facebook",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),),
                  Spacer(),
                  Container(
                    width: 65.width,
                    height: 33.height,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        activeColor: AppColors.white,
                        activeTrackColor: AppColors.blue3D,
                        inactiveThumbColor: AppColors.white,
                        inactiveTrackColor: AppColors.grayE9,
                        value: value1,
                        onChanged: (v) {
                          value1 = v;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ]),
            SizedBox(height: 30.h,),
            Row(
                children: [
                  Image(image: AssetImage("assets/images/google_logo.jpg"),width: 32.sp,),
                  SizedBox(width: 8.w,),
                  Text(
                    "Google",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),),
                  Spacer(),
                  Container(
                    width: 65.width,
                    height: 33.height,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        activeColor: AppColors.white,
                        activeTrackColor: AppColors.blue3D,
                        inactiveThumbColor: AppColors.white,
                        inactiveTrackColor: AppColors.grayE9,
                        value: value2,
                        onChanged: (v) {
                          value2 = v;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ]),
            SizedBox(height: 30.h,),
            Row(
                children: [
                  Icon(Icons.apple,size: 32.sp,),
                  SizedBox(width: 8.w,),
                  Text(
                    "Google",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),),
                  Spacer(),
                  Container(
                    width: 65.width,
                    height: 33.height,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        activeColor: AppColors.white,
                        activeTrackColor: AppColors.blue3D,
                        inactiveThumbColor: AppColors.white,
                        inactiveTrackColor: AppColors.grayE9,
                        value: value3,
                        onChanged: (v) {
                          value3 = v;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
