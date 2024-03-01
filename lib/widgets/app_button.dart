import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/app_colors.dart';

class AppButton extends StatelessWidget {
  AppButton({
    Key? key,
    this.textColor = AppColors.white,
    required this.title,
    required this.onTap,
    this.color = AppColors.black,
    this.radius = 48,
    this.fontSize = 16,
  }) : super(key: key);
  final String title;
  final Color color;
  final Color textColor;
  final Function() onTap;
  final double radius;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35.h,
        width: 296.w,
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: fontSize.sp,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(radius.sp),
          ),
        ),
      ),
    );
  }
}
