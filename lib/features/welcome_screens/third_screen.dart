import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/logo_screen/screen.dart';
import '../../core/app_colors.dart';
import '../../core/navigator.dart';
import '../../widgets/app_button.dart';
import 'widgets/circle.dart';
import 'widgets/welcome_text.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            fit: BoxFit.contain,
            height: 375.h,
            width: 360.w,
            image: AssetImage(
              "assets/images/welcome_image3.png",
            ),
          ),
          SizedBox(height: 10.h),
          WelcomeText(
            title: '''Let’s start your career
          with us now!''',
            height: 69.h,
          ),
          SizedBox(height: 15.h),
          WelcomeText2(
            title: "We’re excited to meet you! To get started . ",
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WelcomeCircle(
                color: AppColors.lightGray,
              ),
              WelcomeCircle(
                color: AppColors.lightGray,
              ),
              WelcomeCircle(
                color: AppColors.darkBlue,
              ),
            ],
          ),
          SizedBox(height: 17.h),
          AppButton(
            title: "Get Started",
            onTap: () {},
          ),
          SizedBox(height: 35.h),
        ],
      ),
    );
  }
}
