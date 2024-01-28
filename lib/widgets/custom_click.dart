import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';

class CustomClick extends StatelessWidget {
  final bool isSelected;
  final String text;
  final void Function()? onTap;
  final double width;

  CustomClick({
    super.key,
    this.isSelected = false,
    this.onTap,
    required this.text,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? AppColors.gray8F : Colors.white,
            borderRadius: BorderRadius.circular(
              12.sp,
            ),
          ),
          width: width,
          height: 32.h,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: isSelected ? Colors.white : AppColors.gray8F,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
