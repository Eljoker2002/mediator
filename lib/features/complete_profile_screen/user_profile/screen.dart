import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/controller.dart';
import 'package:mediator/features/sign_up_screen/SignUpController.dart';
import 'package:mediator/widgets/app_button.dart';
import '../../../core/app_colors.dart';
import '../../welcome_screens/widgets/welcome_text.dart';

class CompleteUserProfileScreen extends StatelessWidget {
  CompleteUserProfileScreen({Key? key}) : super(key: key);

  final UserProfileController controller = UserProfileController();
  final SignUpController signUpController = SignUpController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 44.h),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => RouteUtils.pop(context: context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 18.sp,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(width: 65.w),
                WelcomeText(
                  title: "Fill Your Profile",
                  height: 24.h,
                  width: 162.w,
                  fontSize: 18.sp,
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Container(
              width: 88.w,
              height: 88.h,
              // child: Image(
              //   color: AppColors.grayA6,
              //   image: AssetImage(
              //     "assets/images/profile_image2.png",
              //   ),
              // ),
            ),
            SizedBox(height: 5.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return RefactorTextFormField(
                    text: controller.categories[index].title,
                  );
                },
                itemCount: controller.categories.length,
              ),
            ),
            SizedBox(height: 10.h),
            AppButton(
              title: "Continue",
              onTap: () {
                signUpController.signup(context);
              },
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
