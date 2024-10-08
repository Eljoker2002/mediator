import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/controller.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/skills_controller_api.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/user_api_controller.dart';
import 'package:mediator/features/home_screen/screen.dart';
import 'package:mediator/features/log_in_screen/login_forUser.dart';
import 'package:mediator/widgets/app_button.dart';
import 'package:mediator/widgets/person_icon.dart';
import '../../../core/app_colors.dart';
import '../../../core/validator_utils/validator_utils.dart';
import '../../welcome_screens/widgets/welcome_text.dart';

class CompleteUserProfileScreen extends StatefulWidget {
  CompleteUserProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteUserProfileScreen> createState() =>
      _CompleteUserProfileScreenState();
}

class _CompleteUserProfileScreenState extends State<CompleteUserProfileScreen> {
  final UserProfileController controller = UserProfileController();
  final LoginScreenForUser loginScreenForUser = LoginScreenForUser();
  final SkillsControllerApi skillsControllerApi = SkillsControllerApi();
  final UserSignupController userSignupController = UserSignupController();
  String character = "Gender";
  String uni = "University";
  String city = "City";
  String skills = "Skills";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 44.h),
        child: Form(
          key: userSignupController.formKey,
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
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    RefactorTextFormField(
                      text: "First Name",
                      validator: ValidatorUtils.required,
                      controller: userSignupController.fName,
                    ),
                    RefactorTextFormField(
                      text: "Last Name",
                      validator: ValidatorUtils.required,
                      controller: userSignupController.lName,
                    ),
                    RefactorTextFormField(
                      text: "Email",
                      validator: ValidatorUtils.required,
                      controller: userSignupController.email,
                    ),
                    RefactorTextFormField(
                      text: "Password",
                      validator: ValidatorUtils.required,
                      controller: userSignupController.password,
                    ),
                    RefactorTextFormField(
                      text: "Date of birth",
                      validator: ValidatorUtils.required,
                      controller: userSignupController.dOB,
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
                            padding: EdgeInsets.only(left: 12.w, right: 12.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    character,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: AppColors.grayB7,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    size: 20.sp,
                                    FontAwesomeIcons.caretDown,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.h),
                      child: InkWell(
                        onTap: () {
                          showAlertDialogForUni();
                        },
                        child: Container(
                          color: AppColors.white,
                          width: double.infinity,
                          height: 35.h,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.w, right: 12.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    uni,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: AppColors.grayB7,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    size: 20.sp,
                                    FontAwesomeIcons.caretDown,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.h),
                      child: InkWell(
                        onTap: () {
                          showAlertDialogForCity();
                        },
                        child: Container(
                          color: AppColors.white,
                          width: double.infinity,
                          height: 35.h,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.w, right: 12.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    city,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: AppColors.grayB7,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    size: 20.sp,
                                    FontAwesomeIcons.caretDown,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.h),
                      child: InkWell(
                        onTap: () {
                          userSignupController.allSkills = [];
                          showAlertDialog2();
                        },
                        child: Container(
                          color: AppColors.white,
                          width: double.infinity,
                          height: 35.h,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.w, right: 12.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    skills,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: AppColors.grayB7,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    size: 20.sp,
                                    FontAwesomeIcons.caretDown,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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
                          controller: userSignupController.phone,
                          onChanged: (phone) {},
                        ),
                      ),
                    ),
                    RefactorTextFormField(
                      text: "Bio (optional)",
                      controller: userSignupController.bio,
                    ),
                    RefactorTextFormField(
                      text: "Facebook link (optional)",
                      controller: userSignupController.facebook,
                    ),
                    RefactorTextFormField(
                      text: "Github link (optional)",
                      controller: userSignupController.gitHub,
                    ),
                    // RefactorTextFormField(
                    //   text: "Behance link (optional)",
                    // ),
                    SizedBox(height: 10.h),
                    AppButton(
                      title: "Continue",
                      onTap: () async {
                        await userSignupController.addUser(context);
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
      ),
    );
  }

  void showAlertDialog() {
    String skill1 = "Male";
    String skill2 = "Female";
    bool _isChecked1 = false;
    bool _isChecked2 = false;
    List<bool> selected = [false, false];
    void _updateCheckboxes(int index) {
      setState(() {
        if (index == 1) {
          _isChecked1 = !_isChecked1;
          _isChecked2 = false;
          character = skill1;
          userSignupController.gender = character;
        } else if (index == 2) {
          _isChecked2 = !_isChecked2;
          _isChecked1 = false;
          character = skill2;
          userSignupController.gender = character;
        }
        RouteUtils.pop(context: context);
      });
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
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
                      _updateCheckboxes(1);
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
                      _updateCheckboxes(2);
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
        );
      },
    );
  }

  void showAlertDialog2() {
    String ski1 = "Communication";
    String ski2 = "Leadership";
    String ski3 = "Problem Solving";
    String ski4 = "Creativity";
    String ski5 = "Project Management";
    String ski6 = "Management";
    String ski7 = "Teamwork";
    String ski8 = "Emotional-Intelligence";
    String ski9 = "Decision-making";
    String ski10 = "Skills management";
    String ski11 = "Time Management";
    String ski12 = "Organization";
    String ski13 = "Adaptability";
    String ski14 = "Computer literacy";
    String ski15 = "Writing";
    String ski16 = "Critical thinking";
    String ski17 = "Interpersonal communication";
    String ski18 = "Marketing";
    String ski19 = "Learning";
    String ski20 = "Customer Service";
    String ski21 = "Coding";
    String ski22 = "Technology";
    String ski23 = "Others";

    bool _isChecked1 = false;
    bool _isChecked2 = false;
    bool _isChecked3 = false;
    bool _isChecked4 = false;
    bool _isChecked5 = false;
    bool _isChecked6 = false;
    bool _isChecked7 = false;
    bool _isChecked8 = false;
    bool _isChecked9 = false;
    bool _isChecked10 = false;
    bool _isChecked11 = false;
    bool _isChecked12 = false;
    bool _isChecked13 = false;
    bool _isChecked14 = false;
    bool _isChecked15 = false;
    bool _isChecked16 = false;
    bool _isChecked17 = false;
    bool _isChecked18 = false;
    bool _isChecked19 = false;
    bool _isChecked20 = false;
    bool _isChecked21 = false;
    bool _isChecked22 = false;
    bool _isChecked23 = false;

    List<bool> selected = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false
    ];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CheckboxListTile(
                      title: Text(ski1),
                      value: _isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked1 = value!;
                          var isChecked1 = "";
                          if (_isChecked1 == true) {
                            isChecked1 = "$ski1";
                            userSignupController.allSkills.add(isChecked1);
                          } else {
                            isChecked1 = "";
                            userSignupController.allSkills.remove(isChecked1);
                          }
                          selected[0] = _isChecked1;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski2),
                      value: _isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked2 = value!;
                          var isChecked2 = "";
                          if (_isChecked2 == true) {
                            isChecked2 = "$ski2";
                            userSignupController.allSkills.add(isChecked2);
                          } else {
                            isChecked2 = "";
                            userSignupController.allSkills.remove(isChecked2);
                          }
                          selected[1] = _isChecked2;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski3),
                      value: _isChecked3,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked3 = value!;
                          var isChecked3 = "";
                          if (_isChecked3 == true) {
                            isChecked3 = "$ski3";
                            userSignupController.allSkills.add(isChecked3);
                          } else {
                            isChecked3 = "";
                            userSignupController.allSkills.remove(isChecked3);
                          }
                          selected[2] = _isChecked3;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski4),
                      value: _isChecked4,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked4 = value!;
                          var isChecked4 = "";
                          if (_isChecked4 == true) {
                            isChecked4 = "$ski4";
                            userSignupController.allSkills.add(isChecked4);
                          } else {
                            isChecked4 = "";
                            userSignupController.allSkills.remove(isChecked4);
                          }
                          selected[3] = _isChecked4;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski5),
                      value: _isChecked5,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked5 = value!;
                          var isChecked5 = "";
                          if (_isChecked5 == true) {
                            isChecked5 = "$ski5";
                            userSignupController.allSkills.add(isChecked5);
                          } else {
                            isChecked5 = "";
                            userSignupController.allSkills.remove(isChecked5);
                          }
                          selected[4] = _isChecked5;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski6),
                      value: _isChecked6,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked6 = value!;
                          var isChecked6 = "";
                          if (_isChecked6 == true) {
                            isChecked6 = "$ski6";
                            userSignupController.allSkills.add(isChecked6);
                          } else {
                            isChecked6 = "";
                            userSignupController.allSkills.remove(isChecked6);
                          }
                          selected[5] = _isChecked6;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski7),
                      value: _isChecked7,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked7 = value!;
                          var isChecked7 = "";
                          if (_isChecked7 == true) {
                            isChecked7 = "$ski7";
                            userSignupController.allSkills.add(isChecked7);
                          } else {
                            isChecked7 = "";
                            userSignupController.allSkills.remove(isChecked7);
                          }
                          selected[6] = _isChecked7;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski8),
                      value: _isChecked8,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked8 = value!;
                          var isChecked8 = "";
                          if (_isChecked8 == true) {
                            isChecked8 = "$ski8";
                            userSignupController.allSkills.add(isChecked8);
                          } else {
                            isChecked8 = "";
                            userSignupController.allSkills.remove(isChecked8);
                          }
                          selected[7] = _isChecked8;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski9),
                      value: _isChecked9,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked9 = value!;
                          var isChecked9 = "";
                          if (_isChecked9 == true) {
                            isChecked9 = "$ski9";
                            userSignupController.allSkills.add(isChecked9);
                          } else {
                            isChecked9 = "";
                            userSignupController.allSkills.remove(isChecked9);
                          }
                          selected[8] = _isChecked9;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski10),
                      value: _isChecked10,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked10 = value!;
                          var isChecked10 = "";
                          if (_isChecked10 == true) {
                            isChecked10 = "$ski6";
                            userSignupController.allSkills.add(isChecked10);
                          } else {
                            isChecked10 = "";
                            userSignupController.allSkills.remove(isChecked10);
                          }
                          selected[9] = _isChecked10;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski11),
                      value: _isChecked11,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked11 = value!;
                          var isChecked11 = "";
                          if (_isChecked11 == true) {
                            isChecked11 = "$ski11";
                            userSignupController.allSkills.add(isChecked11);
                          } else {
                            isChecked11 = "";
                            userSignupController.allSkills.remove(isChecked11);
                          }
                          selected[10] = _isChecked11;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski12),
                      value: _isChecked12,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked12 = value!;
                          var isChecked12 = "";
                          if (_isChecked12 == true) {
                            isChecked12 = "$ski12";
                            userSignupController.allSkills.add(isChecked12);
                          } else {
                            isChecked12 = "";
                            userSignupController.allSkills.remove(isChecked12);
                          }
                          selected[11] = _isChecked12;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski13),
                      value: _isChecked13,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked13 = value!;
                          var isChecked13 = "";
                          if (_isChecked13 == true) {
                            isChecked13 = "$ski13";
                            userSignupController.allSkills.add(isChecked13);
                          } else {
                            isChecked13 = "";
                            userSignupController.allSkills.remove(isChecked13);
                          }
                          selected[12] = _isChecked13;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski14),
                      value: _isChecked14,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked14 = value!;
                          var isChecked14 = "";
                          if (_isChecked14 == true) {
                            isChecked14 = "$ski14";
                            userSignupController.allSkills.add(isChecked14);
                          } else {
                            isChecked14 = "";
                            userSignupController.allSkills.remove(isChecked14);
                          }
                          selected[13] = _isChecked14;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski15),
                      value: _isChecked15,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked15 = value!;
                          var isChecked15 = "";
                          if (_isChecked15 == true) {
                            isChecked15 = "$ski6";
                            userSignupController.allSkills.add(isChecked15);
                          } else {
                            isChecked15 = "";
                            userSignupController.allSkills.remove(isChecked15);
                          }
                          selected[14] = _isChecked15;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski16),
                      value: _isChecked16,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked16 = value!;
                          var isChecked16 = "";
                          if (_isChecked16 == true) {
                            isChecked16 = "$ski6";
                            userSignupController.allSkills.add(isChecked16);
                          } else {
                            isChecked16 = "";
                            userSignupController.allSkills.remove(isChecked16);
                          }
                          selected[15] = _isChecked16;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski17),
                      value: _isChecked17,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked17 = value!;
                          var isChecked17 = "";
                          if (_isChecked17 == true) {
                            isChecked17 = "$ski17";
                            userSignupController.allSkills.add(isChecked17);
                          } else {
                            isChecked17 = "";
                            userSignupController.allSkills.remove(isChecked17);
                          }
                          selected[16] = _isChecked17;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski18),
                      value: _isChecked18,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked18 = value!;
                          var isChecked18 = "";
                          if (_isChecked18 == true) {
                            isChecked18 = "$ski18";
                            userSignupController.allSkills.add(isChecked18);
                          } else {
                            isChecked18 = "";
                            userSignupController.allSkills.remove(isChecked18);
                          }
                          selected[17] = _isChecked18;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski19),
                      value: _isChecked19,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked19 = value!;
                          var isChecked19 = "";
                          if (_isChecked19 == true) {
                            isChecked19 = "$ski19";
                            userSignupController.allSkills.add(isChecked19);
                          } else {
                            isChecked19 = "";
                            userSignupController.allSkills.remove(isChecked19);
                          }
                          selected[18] = _isChecked19;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski20),
                      value: _isChecked20,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked20 = value!;
                          var isChecked20 = "";
                          if (_isChecked20 == true) {
                            isChecked20 = "$ski20";
                            userSignupController.allSkills.add(isChecked20);
                          } else {
                            isChecked20 = "";
                            userSignupController.allSkills.remove(isChecked20);
                          }
                          selected[19] = _isChecked20;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski21),
                      value: _isChecked21,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked21 = value!;
                          var isChecked21 = "";
                          if (_isChecked21 == true) {
                            isChecked21 = "$ski21";
                            userSignupController.allSkills.add(isChecked21);
                          } else {
                            isChecked21 = "";
                            userSignupController.allSkills.remove(isChecked21);
                          }
                          selected[20] = _isChecked21;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski22),
                      value: _isChecked22,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked22 = value!;
                          var isChecked22 = "";
                          if (_isChecked22 == true) {
                            isChecked22 = "$ski22";
                            userSignupController.allSkills.add(isChecked22);
                          } else {
                            isChecked22 = "";
                            userSignupController.allSkills.remove(isChecked22);
                          }
                          selected[21] = _isChecked22;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(ski23),
                      value: _isChecked23,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked23 = value!;
                          var isChecked23 = "";
                          if (_isChecked23 == true) {
                            isChecked23 = "$ski23";
                            userSignupController.allSkills.add(isChecked23);
                          } else {
                            isChecked23 = "";
                            userSignupController.allSkills.remove(isChecked23);
                          }
                          selected[22] = _isChecked23;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            userSignupController.allSkills;
                            // skillsControllerApi.sendSkills(context);
                            RouteUtils.pop(context: context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: AppColors.green,
                            ),
                            width: 50.w,
                            height: 30.h,
                            child: Center(
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        InkWell(
                          onTap: () {
                            RouteUtils.pop(context: context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: AppColors.red,
                            ),
                            width: 50.w,
                            height: 30.h,
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  void showAlertDialogForUni() {
    List<String> allUni = [
      "Ain Shams University",
      "Al-Azhar University",
      "Alexandria University",
      "Aswan University",
      "Aswan University",
      "Banha University",
      "Beni-Suef University",
      "Cairo University",
      "Damanhour University",
      "Damietta University",
      "Egypt-Japan University of Science and Technology",
      "Fayoum University",
      "Helwan University",
      "Kafrelsheikh University",
      "Luxor University",
      "Mansoura University",
      "Minia University",
      "Minufiya University",
      "New Valley University",
      "Port Said University",
      "Sohag University",
      "South Valley University",
      "Suez Canal University",
      "Suez University",
      "Tanta University",
      "University of Sadat City",
      "Zagazig University",
    ];
    List<bool> _isCheckedAll = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ];
    void _updateCheckboxes(int index) {
      setState(() {
        if (index == _isCheckedAll[index]) {
          _isCheckedAll[index] = true;
        }
      });
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return Container(
                width: 200.w,
                height: 300.h,
                child: ListView.builder(
                  itemCount: allUni.length,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                      title: Text(allUni[index]),
                      value: _isCheckedAll[index],
                      onChanged: (bool? value) {
                        _updateCheckboxes(1);
                        setState(() {
                          _isCheckedAll[index] = value!;
                          var isChecked1 = "";
                          if (_isCheckedAll[index] == true) {
                            isChecked1 = "${allUni[index]}";
                            userSignupController.university = isChecked1;
                            print(userSignupController.university);
                            uni = allUni[index];
                            RouteUtils.pop(context: context);
                          } else {
                            isChecked1 = "";
                          }
                        });
                      },
                    );
                    ;
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }

  void showAlertDialogForCity() {
    List<String> allCity = [
      "Cairo",
      "Alexandria",
      "Gizeh",
      "Port Said",
      "Suez",
      "Luxor",
      "Mansoura",
      "El-Mahalla El-Kubra",
      "Tanta",
      "Asyut",
      "Ismailia",
      "Fayyum",
      "Zagazig",
      "Aswan",
      "Damietta",
      "Damanhur",
      "Al-Minya",
      "Beni Suef",
      "Qena",
      "Sohag",
      "6th of October City",
      "Banha",
      "Kafr el-Sheikh",
      "Arish",
      "Marsa Matruh",
    ];
    List<bool> _isCheckedAll = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ];
    void _updateCheckboxes(int index) {
      setState(() {
        if (index == _isCheckedAll[index]) {
          _isCheckedAll[index] = true;
        }
      });
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return Container(
                width: 200.w,
                height: 300.h,
                child: ListView.builder(
                  itemCount: allCity.length,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                      title: Text(allCity[index]),
                      value: _isCheckedAll[index],
                      onChanged: (bool? value) {
                        _updateCheckboxes(1);
                        setState(() {
                          _isCheckedAll[index] = value!;
                          var isChecked1 = "";
                          if (_isCheckedAll[index] == true) {
                            isChecked1 = "${allCity[index]}";
                            userSignupController.city = isChecked1;
                            print(userSignupController.city);
                            uni = allCity[index];
                            RouteUtils.pop(context: context);
                          } else {
                            isChecked1 = "";
                          }
                        });
                      },
                    );
                    ;
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
