import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
        children: [
          Image(
            height: 400.h,
            image: AssetImage("assets/images/welcome2.png"),
          ),
          SizedBox(height: 10.h),
          WelcomeText(
            width: 327.w,
            fontSize: 24.w,
            title: "We are the best mediator platform",
            height: 56.h,
          ),
          SizedBox(height: 15.h),
          WelcomeText2(
            title: "Join Us & Explore Thousand of opportunities.",
            width: 296.w,
            height: 24.h,
            fontSize: 12.sp,
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
                color: AppColors.black,
              ),
              WelcomeCircle(
                color: AppColors.grayCC,
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
