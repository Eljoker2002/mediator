import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';

import '../../../core/app_colors.dart';
import '../../../core/navigator.dart';
import '../../../widgets/app_button.dart';
import '../../welcome_screens/widgets/welcome_text.dart';

class OrganizationProfile extends StatelessWidget {
  const OrganizationProfile({super.key});

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
                Spacer(flex: 3),
                WelcomeText(
                  title: "Company Profile",
                  height: 24.h,
                  width: 162.w,
                  fontSize: 18.sp,
                ),
                Spacer(flex: 4),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  RefactorTextFormField(
                    text: "Company Name",
                  ),
                  RefactorTextFormField(
                    text: "Field",
                    icon: Icons.arrow_drop_down,
                  ),
                  RefactorTextFormField(
                    text: "Address",
                  ),
                  RefactorTextFormField(
                    text: "Field",
                  ),
                  RefactorTextFormField(
                    text: "Website",
                  ),
                  RefactorTextFormField(
                    text: "Socials (Optional)",
                  ),
                  RefactorTextFormField(
                    text: "Which service is provided?",
                    icon: Icons.arrow_drop_down,
                  ),
                  RefactorTextFormField(
                    text: "About Company...",
                    maxLines: 5,
                    changeHeight: true,
                    height: 88.h,
                  ),
                  SizedBox(height: 10.h),
                  AppButton(
                    title: "Continue",
                    onTap: () {},
                  ),
                  SizedBox(height: 25.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
