import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/app_colors.dart';

class WelcomeText extends StatelessWidget {
  WelcomeText({Key? key, required this.title, required this.height})
      : super(key: key);
  final String title;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: height,
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 26.w,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomeText2 extends StatelessWidget {
  final String title;
  const WelcomeText2({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.w,
      height: 22.h,
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: AppColors.gray,
              fontSize: 13.w,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
