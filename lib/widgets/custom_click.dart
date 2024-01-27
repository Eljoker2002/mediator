import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: isSelected ? Color(0xFF0B1075) : Colors.white,
            borderRadius: BorderRadius.circular(
              24.sp,
            ),
          ),
          width: width,
          height: 32.h,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: isSelected ? Colors.white : Color(0xFF0B1075),
                  fontSize: 13.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
