import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/chats_screen/text(l+s).dart';
import '../../core/app_colors.dart';

Widget oneCommunity() {
  return Container(
    margin: EdgeInsets.only(left: 15.w),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/person-circle.png",
          scale: 1.2,
        ),
        SizedBox(height: 5.h),
        LText(
          text: "UI/UX Designers",
          fontSize: 11,
        ),
        SizedBox(height: 2.h),
        SText(
          text: "1400 members",
          fontSize: 10,
        ),
      ],
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.sp),
      color: AppColors.white,
    ),
    width: 140.w,
  );
}
