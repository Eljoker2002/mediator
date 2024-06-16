import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/controller.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/SignUpController.dart';
import 'package:mediator/widgets/app_button.dart';
import 'package:mediator/widgets/person_icon.dart';
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
            InkWell(
              onTap: () {},
              child: Container(
                color: AppColors.whiteF6,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    PersonIcon(
                      width: 80,
                      height: 80,
                      size: 60,
                    ),
                    Icon(
                      size: 18.sp,
                      FontAwesomeIcons.solidPenToSquare,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Expanded(
              // child: ListView.builder(
              //   padding: EdgeInsets.zero,
              //   itemBuilder: (context, index) {
              //     return RefactorTextFormField(
              //       text: controller.categories[index].title,
              //     );
              //   },
              //   itemCount: controller.categories.length,
              // ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  RefactorTextFormField(
                    text: "First Name",
                  ),
                  RefactorTextFormField(
                    text: "Last Name",
                  ),
                  RefactorTextFormField(
                    text: "Email",
                  ),
                  RefactorTextFormField(
                    text: "Password",
                  ),
                  RefactorTextFormField(
                    text: "Date of birth",
                  ),
                  RefactorTextFormField(
                    text: "Gender",
                  ),
                  RefactorTextFormField(
                    text: "Character",
                  ),
                  RefactorTextFormField(
                    text: "Education",
                  ),
                  RefactorTextFormField(
                    text: "City",
                  ),
                  RefactorTextFormField(
                    text: "University",
                  ),
                  RefactorTextFormField(
                    text: "Skills",
                  ),
                  RefactorTextFormField(
                    text: "Experiences",
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Container(
                      height: 40.h,
                      color: AppColors.white,
                      child: IntlPhoneField(
                        flagsButtonPadding:
                            EdgeInsets.symmetric(horizontal: 15.w),
                        showDropdownIcon: false,
                        disableLengthCheck: true,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.grayB7,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.sp),
                            borderSide: BorderSide(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        initialCountryCode: 'EG',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),
                  ),
                  RefactorTextFormField(
                    text: "Bio (optional)",
                  ),
                  RefactorTextFormField(
                    text: "Your CV (optional)",
                  ),
                  RefactorTextFormField(
                    text: "Facebook link (optional)",
                  ),
                  RefactorTextFormField(
                    text: "Github link (optional)",
                  ),
                  RefactorTextFormField(
                    text: "Behance link (optional)",
                  ),
                  SizedBox(height: 10.h),
                  AppButton(
                    title: "Continue",
                    onTap: () {
                      // signUpController.signup(context);
                    },
                  ),
                  SizedBox(height: 15.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
