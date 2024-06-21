import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/controller.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/OrganizationSignUpController.dart';
import 'package:mediator/widgets/app_button.dart';
import 'package:mediator/widgets/dialog.dart';
import 'package:mediator/widgets/person_icon.dart';
import '../../../core/app_colors.dart';
import '../../welcome_screens/widgets/welcome_text.dart';

class CompleteUserProfileScreen extends StatefulWidget {
  CompleteUserProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteUserProfileScreen> createState() =>
      _CompleteUserProfileScreenState();
}

class _CompleteUserProfileScreenState extends State<CompleteUserProfileScreen> {
  final UserProfileController controller = UserProfileController();

  final SignUpController signUpController = SignUpController();

  bool? _isChecked = false;

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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0.h),
                    child: InkWell(
                      onTap: () {
                        showAlertDialog();
                      },
                      child: Container(
                        color: AppColors.white,
                        width: double.infinity,
                        height: 35.h,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Character",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: AppColors.grayB7,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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

  void showAlertDialog() {
    String skill1 = "Male";
    String skill2 = "Female";
    bool _isChecked1 = false;
    bool _isChecked2 = false;
    List<bool> selected = [false, false];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            content: StatefulBuilder(
              builder: (BuildContext context,
                  void Function(void Function()) setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CheckboxListTile(
                      title: Text(skill1),
                      value: _isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked1 = value!;
                          var isChecked1 = "";
                          if (_isChecked1 == true) {
                            isChecked1 = "$skill1";
                          } else {
                            isChecked1 = "";
                          }
                          selected[0] = _isChecked1;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(skill2),
                      value: _isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked2 = value!;
                          var isChecked2 = "";
                          if (_isChecked2 == true) {
                            isChecked2 = "$skill2";
                          } else {
                            isChecked2 = "";
                          }
                          selected[1] = _isChecked2;
                        });
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
