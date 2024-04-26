import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/app_colors.dart';

void showSnackBar(
  BuildContext context, {
  required String title,
  bool showDismissButton = false,
  bool error = false,
}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        title,
        style: TextStyle(
          fontSize: 14.sp,
        ),
      ),
      backgroundColor: error ? AppColors.red : AppColors.red,
      behavior: SnackBarBehavior.floating,
      action: showDismissButton
          ? SnackBarAction(
              onPressed: () {
                print('Dismiss');
              },
              textColor: Colors.yellow,
              label: "Dismiss",
            )
          : null,
    ),
  );
}
