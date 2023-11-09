import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/welcome_screens/third_screen.dart';
import '../../core/app_colors.dart';
import '../../core/navigator.dart';
import '../../widgets/app_button.dart';
import 'widgets/circle.dart';
import 'widgets/welcome_text.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

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
              "assets/images/welcome_image2.jpg",
            ),
          ),
          SizedBox(height: 10.h),
          WelcomeText(
            width: 327.w,
            fontSize: 24.w,
            title: '''We are the best job 
            platform''',
            height: 70.h,
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
                color: AppColors.lightGray,
              ),
              WelcomeCircle(
                color: AppColors.darkBlue,
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
                screen: ThirdScreen(),
              );
            },
          ),
          SizedBox(height: 35.h),
        ],
      ),
    );
  }
}
