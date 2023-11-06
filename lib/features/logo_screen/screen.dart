import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 72.h,
              width: 72.w,
              image: AssetImage(
                "assets/images/logo.png",
              ),
            ),
            Text(
              "Mediator",
              style: GoogleFonts.calistoga(
                textStyle: TextStyle(
                  fontSize: 36,
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
