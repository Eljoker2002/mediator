import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/logo_screen/screen.dart';
import 'package:mediator/features/sign_up_screen/sign_up.dart';
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
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            fit: BoxFit.contain,
            height: 375.h,
            width: 360.w,
            image: AssetImage(
              "assets/images/welcom_image3.png",
            ),
          ),
          SizedBox(height: 10.h),
          WelcomeText(
            width: 327.w,
            fontSize: 24.w,
            title: '''Let’s start your career
          with us now!''',
            height: 69.h,
          ),
          SizedBox(height: 15.h),
          WelcomeText2(
            title: "We’re excited to meet you! To get started . ",
            width: 296.w,
            height: 22.h,
            fontSize: 12.w,
            fontWeight: FontWeight.w500,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WelcomeCircle(
                color: AppColors.grayCC,
              ),
              WelcomeCircle(
                color: AppColors.grayCC,
              ),
              WelcomeCircle(
                color: AppColors.black,
              ),
            ],
          ),
          SizedBox(height: 17.h),
          AppButton(
            title: "Get Started",
            onTap: () {
              RouteUtils.pushAndRemoveAll(
                  context: context, screen: SignupScreen());
            },
          ),
          SizedBox(height: 35.h),
        ],
      ),
    );
  }
}
