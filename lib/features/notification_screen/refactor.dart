import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

class GorA extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function()? onTap;

  const GorA({
    super.key,
    required this.text,
    this.isSelected = false,
    this.onTap,
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
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: isSelected ? AppColors.blue3D : AppColors.grayA8,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            height: 4.h,
            width: 160.w,
            color: isSelected ? AppColors.blue3D : AppColors.grayA8,
          ),
        ],
      ),
    );
  }
}
