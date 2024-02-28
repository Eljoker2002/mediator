import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70.h,
          color: AppColors.whiteF6,
          child: Row(
            children: [
              Icon(Icons.thumb_up, size: 30.sp, color: AppColors.gray71),
              SizedBox(
                width: 17.w,
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Like",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Text(
                      "Someone Liked your post.",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.gray83,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 60.w),
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                  "9:56 PM",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray83,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: AppColors.grayDE,
          height: 0,
        )
      ],
    );
  }
}
