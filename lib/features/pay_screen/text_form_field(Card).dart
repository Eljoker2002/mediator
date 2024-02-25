import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';

class CardTextField extends StatelessWidget {
  const CardTextField({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      child: TextFormField(
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.w, top: 10.h, bottom: 10.h),
          filled: true,
          fillColor: AppColors.grayF0,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.sp),
            borderSide: BorderSide(
              color: AppColors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.sp),
            borderSide: BorderSide(
              color: AppColors.white,
            ),
          ),
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: AppColors.grayA8,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
