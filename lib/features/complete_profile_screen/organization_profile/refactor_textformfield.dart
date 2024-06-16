import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';

class RefactorTextFormField extends StatelessWidget {
  RefactorTextFormField({
    super.key,
    this.text,
    this.icon,
    this.height,
    this.width = double.infinity,
    this.changeHeight = false,
    this.maxLines = 1,
    this.controller,
    this.validator,
    this.isIcon = false,
  });
  final String? text;
  final IconData? icon;
  final double? height;
  final double? width;
  final bool changeHeight;
  final int maxLines;
  final String? Function(String?)? validator;
  final bool isIcon;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: SizedBox(
        width: width,
        height: changeHeight ? height : 40.h,
        child: TextFormField(
          cursorHeight: 15.h,
          validator: validator,
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
            filled: true,
            fillColor: AppColors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.sp),
              borderSide: BorderSide(
                color: Color(0xFFF5F5F5),
              ),
            ),
            suffixIcon: isIcon
                ? Icon(
                    icon,
                    size: 25.sp,
                    color: Color(0xFFA8A8A8),
                  )
                : null,
            labelText: text,
            labelStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: AppColors.grayB7,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
