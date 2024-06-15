import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/app_colors.dart';

class PersonIcon extends StatelessWidget {
  const PersonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: AppColors.grayDE,
          borderRadius: BorderRadius.circular(20.sp)
      ),
      width: 35.sp,
      height: 35.sp,
      child: Icon(
        size: 30.sp,
        Icons.person,
        color: AppColors.grayA6,
      ),
    );
  }
}
