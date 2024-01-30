import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/home_screen/screen.dart';

import '../../core/app_colors.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
 int currenIndex=0;

 final List<Widget> screens=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue,
            height: 163.h,
            width: 430.w,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => chatItem(),
              separatorBuilder: (context, index) => SizedBox(
                height: 19.36.h,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

Widget chatItem() {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 10.w),
    child: Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 28.sp,
             child: Image.asset("assets/images/person-circle.png",fit: BoxFit.cover, width: 67.76.w),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 1.h, end: 1.w),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 7.sp,
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.1.w,top: 1.7.h),
                    child: CircleAvatar(
                      radius: 5.sp,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
        SizedBox(width: 10.89.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "User Name",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 170.29.w),
                  Align(
                    alignment: Alignment.center,
                    child: Text("12:30",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: AppColors.grayA4,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  Text("okay, Do you have a deal?",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: AppColors.gray83,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

