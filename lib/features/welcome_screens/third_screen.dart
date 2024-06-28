import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mediator/features/log_in_screen/login_forCompany.dart';
import 'package:mediator/features/sign_up_screen/sign_up.dart';
import '../../core/app_colors.dart';
import '../../core/navigator.dart';
import '../../widgets/app_button.dart';
import '../character_screen/character.dart';
import 'widgets/circle.dart';
import 'widgets/welcome_text.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Image(
            height: 400.h,
            image: AssetImage("assets/images/welcome3.png"),
          ),
          WelcomeText(
            width: 327.w,
            fontSize: 24.w,
            title: "Let’s start with us now!",
            height: 69.h,
          ),
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
                context: context,
                screen: CharacterScreen(),
              );
            },
          ),
          SizedBox(height: 35.h),
        ],
      ),
    );
  }
}
