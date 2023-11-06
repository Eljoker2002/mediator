import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/app_colors.dart';

class AppButton extends StatelessWidget {
  AppButton({Key? key, required this.title, required this.onTap}) : super(key: key);
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40.h,
          width: 296.w,
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 16.w,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: AppColors.darkBlue,
            borderRadius: BorderRadius.all(
              Radius.circular(48),
            ),
          ),
        ),
      ),
    );
  }
}
