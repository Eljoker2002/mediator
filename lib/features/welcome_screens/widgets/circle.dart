import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors.dart';

class WelcomeCircle extends StatelessWidget {
  const WelcomeCircle({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: color == AppColors.darkBlue ? 12.w : 8.w,
      height: color == AppColors.darkBlue ? 12.h : 8.h,
    );
  }
}
