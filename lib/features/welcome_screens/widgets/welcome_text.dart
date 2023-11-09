import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/app_colors.dart';

class WelcomeText extends StatelessWidget {
  WelcomeText({Key? key, required this.title, required this.height,required this.width,required this.fontSize})
      : super(key: key);
  final String title;
  final double height;
  final double width;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: fontSize,
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
  final double width;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;


  const WelcomeText2({super.key, required this.title,required this.width,required this.height,required this.fontSize,required this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height,
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: AppColors.gray,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
