import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import 'package:mediator/widgets/app_button.dart';
import '../../../core/app_colors.dart';
import '../../welcome_screens/widgets/welcome_text.dart';

class OrganizationProfile extends StatelessWidget {
  const OrganizationProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6  ,
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 44.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 24.sp,
                height: 24.sp,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: AppColors.smoothGray,
                  //     spreadRadius: 1.sp,
                  //   ),],
                ),
                child: Icon(
                  Icons.arrow_back_rounded,
                  size: 20.sp,
                  color: AppColors.black,
                ),
              ),
            ),
            WelcomeText(
              title: "Company Profile",
              height: 24.h,
              width: 162.w,
              fontSize: 18.sp,
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
                    text: "About Company",
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
