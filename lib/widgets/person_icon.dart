import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/app_colors.dart';

class PersonIcon extends StatelessWidget {
  final double width;
  final double height;
  final double size;

  const PersonIcon({
    super.key,
    this.width = 35,
    this.height = 35,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grayDE,
        borderRadius: BorderRadius.circular(40.sp),
      ),
      width: width.sp,
      height: height.sp,
      child: Icon(
        size: size.sp,
        Icons.person,
        color: AppColors.grayA6,
      ),
    );
  }
}
