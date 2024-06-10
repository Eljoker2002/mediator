import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/core/validator_utils/validator_utils.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/SignUpController.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import '../../../core/app_colors.dart';
import '../../../core/navigator.dart';
import '../../../widgets/app_button.dart';
import '../../welcome_screens/widgets/welcome_text.dart';

class OrganizationProfile extends StatelessWidget {
  OrganizationProfile({super.key});
  SignUpController controller = SignUpController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Form(
        key: controller.formKey,
        child: Padding(
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
                      validator: ValidatorUtils.required,
                      text: "Company Name",
                      controller: controller.name,
                    ),
                    RefactorTextFormField(
                      validator: ValidatorUtils.required,
                      text: "Email",
                      controller: controller.email,
                    ),
                    RefactorTextFormField(
                      validator: ValidatorUtils.required,
                      text: "Password",
                      controller: controller.password,
                    ),
                    RefactorTextFormField(
                      validator: ValidatorUtils.required,
                      text: "Field",
                      controller: controller.field,
                      icon: Icons.arrow_drop_down,
                    ),
                    RefactorTextFormField(
                      validator: ValidatorUtils.required,
                      text: "Address",
                      controller: controller.address,
                    ),
                    RefactorTextFormField(
                      validator: ValidatorUtils.required,
                      text: "Phone",
                      controller: controller.phone,
                    ),
                    RefactorTextFormField(
                      text: "Website (Optional)",
                      controller: controller.website,
                    ),
                    RefactorTextFormField(
                      text: "Socials (Optional)",
                      controller: controller.social,
                    ),
                    RefactorTextFormField(
                      validator: ValidatorUtils.required,
                      text: "Which service is provided?",
                      controller: controller.service,
                      icon: Icons.arrow_drop_down,
                    ),
                    RefactorTextFormField(
                      validator: ValidatorUtils.required,
                      text: "About Company...",
                      controller: controller.about,
                      maxLines: 5,
                      changeHeight: true,
                      height: 88.h,
                    ),
                    SizedBox(height: 10.h),
                    AppButton(
                      title: "Continue",
                      onTap: () {
                        controller.addUser(context);
                      },
                    ),
                    SizedBox(height: 25.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
