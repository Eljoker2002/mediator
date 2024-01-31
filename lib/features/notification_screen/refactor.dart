import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

class ChooseFromTop extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function()? onTap;
  final double width;
  final double fontSize;

  const ChooseFromTop({
    super.key,
    required this.text,
    this.isSelected = false,
    this.onTap,
    required this.width,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                color: isSelected ? AppColors.blue3D : AppColors.grayA8,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            height: 2.h,
            width: width,
            color: isSelected ? AppColors.blue3D : AppColors.grayA8,
          ),
        ],
      ),
    );
  }
}
