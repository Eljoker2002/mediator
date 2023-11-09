import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/welcome_screens/second_screen.dart';
import 'package:mediator/features/welcome_screens/widgets/welcome_text.dart';
import 'package:mediator/widgets/app_button.dart';
import 'widgets/circle.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            fit: BoxFit.contain,
            height: 375.h,
            width: 360.w,
            image: AssetImage(
              "assets/images/welcome_image.png",
            ),
          ),
          SizedBox(height: 10.h),
          WelcomeText(
            title: "Welcome to Mediator",
            height: 32.h,
            width: 327.w,
            fontSize: 24.w,
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
                color: AppColors.darkBlue,
              ),
              WelcomeCircle(
                color: AppColors.lightGray,
              ),
              WelcomeCircle(
                color: AppColors.lightGray,
              ),
            ],
          ),
          SizedBox(height: 17.h),
          AppButton(
            title: "Next",
            onTap: () {
              RouteUtils.push(
                context: context,
                screen: SecondScreen(),
              );
            },
          ),
          SizedBox(height: 35.h),
        ],
      ),
    );
  }
}
