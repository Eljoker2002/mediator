import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/dimensions/dimensions.dart';
import 'package:mediator/features/welcome_screens/widgets/welcome_text.dart';

import '../../core/app_colors.dart';

class Notification2 extends StatefulWidget {
  const Notification2({super.key});

  @override
  State<Notification2> createState() => _Notification2State();
}

class _Notification2State extends State<Notification2> {
  bool value1=false;
  bool value2=false;
  bool value3=false;
  bool value4=false;
  bool value5=false;
  bool value6=false;
  bool value7=false;
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
                  "Notification",
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
              Text(
               "General Notifications",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
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
            SizedBox(height: 10.h,),
            Padding(
             padding:EdgeInsets.only(right: 12.w),
             child: Divider(height: 1.h,),
           ),
            SizedBox(height: 10.h,),
            Row(
                children: [
                  Text(
                    "Sound",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
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
            SizedBox(height: 10.h,),
            Padding(
              padding:EdgeInsets.only(right: 12.w),
              child: Divider(height: 1.h,),
            ),
            SizedBox(height: 10.h,),
            Row(
                children: [
                  Text(
                    "Vibrate",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
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
            SizedBox(height: 10.h,),
            Padding(
              padding:EdgeInsets.only(right: 12.w),
              child: Divider(height: 1.h,),
            ),
            SizedBox(height: 10.h,),
            Row(
                children: [
                  Text(
                    '''Notify me when there is job/
internship/competition/
employees recommendation''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
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
                        value: value4,
                        onChanged: (v) {
                          value4 = v;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ]),
            SizedBox(height: 10.h,),
            Padding(
              padding:EdgeInsets.only(right: 12.w),
              child: Divider(height: 1.h,),
            ),
            SizedBox(height: 10.h,),
            Row(
                children: [
                  Text(
                    '''Notify me when there is job/
internship/competition/
employees invitation''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
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
                        value: value5,
                        onChanged: (v) {
                          value5 = v;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ]),
            SizedBox(height: 10.h,),
            Padding(
              padding:EdgeInsets.only(right: 12.w),
              child: Divider(height: 1.h,),
            ),
            SizedBox(height: 10.h,),
            Row(
                children: [
                  Text(
                    '''Notify me when anyone views my 
profile''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
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
                        value: value6,
                        onChanged: (v) {
                          value6 = v;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ]),
            SizedBox(height: 10.h,),
            Padding(
              padding:EdgeInsets.only(right: 12.w),
              child: Divider(height: 1.h,),
            ),
            SizedBox(height: 10.h,),
            Row(
                children: [
                  Text(
                    '''App Updates''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
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
                        value: value7,
                        onChanged: (v) {
                          value7 = v;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ]),
            SizedBox(height: 10.h,),
            Padding(
              padding:EdgeInsets.only(right: 12.w),
              child: Divider(height: 1.h,),
            ),
            SizedBox(height: 10.h,),
          ],
        ),
      )
    );
  }
}
