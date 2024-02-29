import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

class LText extends StatelessWidget {
  LText({
    Key? key,
    required this.text,
    this.fontSize = 14,
  }) : super(key: key);

  String text;
  double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: fontSize.sp,
        ),
      ),
    );
  }
}

class SText extends StatelessWidget {
  SText({
    Key? key,
    required this.text,
    this.fontSize = 11,
  }) : super(key: key);

  String text;
  double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: AppColors.gray83,
          fontWeight: FontWeight.w400,
          fontSize: fontSize.sp,
        ),
      ),
    );
  }
}
