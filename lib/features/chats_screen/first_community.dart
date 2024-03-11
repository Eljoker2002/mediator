import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/chats_screen/text(l+s).dart';
import '../../core/app_colors.dart';

Widget firstCommunity() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        margin: EdgeInsets.only(left: 15.w, right: 15.w),
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.sp),
          color: AppColors.white,
        ),
        child: Row(
          children: [
            Spacer(),
            Image.asset(
              "assets/images/ion_person-circle (1).png",
              width: 60.sp,
              height: 60.sp,
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                LText(
                  text: "UI/UX Designers",
                  fontSize: 13,
                ),
                SizedBox(height: 3.h),
                SText(
                  text: "okay, Do you have a deal?",
                  fontSize: 10,
                )
              ],
            ),
            Spacer(flex: 2),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SText(
                  text: "12:30",
                  fontSize: 10,
                ),
                SizedBox(height: 3.h),
                Container(
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  width: 20.sp,
                  height: 20.sp,
                  decoration: BoxDecoration(
                    color: AppColors.blue30,
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                )
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    ],
  );
}
