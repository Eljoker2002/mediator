import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/validator_utils/validator_utils.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/OrganizationSignUpController.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import '../../../core/app_colors.dart';
import '../../../core/navigator.dart';
import '../../../widgets/app_button.dart';
import '../../welcome_screens/widgets/welcome_text.dart';

class OrganizationProfile extends StatefulWidget {
  OrganizationProfile({super.key});

  @override
  State<OrganizationProfile> createState() => _OrganizationProfileState();
}

class _OrganizationProfileState extends State<OrganizationProfile> {
  CompanySignUpController controller = CompanySignUpController();
  String services = "Services";
  String fields = "Fields";
  @override
  void initState() {
    controller.getData();
    super.initState();
  }

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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.h),
                      child: InkWell(
                        onTap: () {
                          controller.allFields = [];
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
                                    fields,
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.h),
                      child: InkWell(
                        onTap: () {
                          controller.services = "";
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
                                    services,
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

  void showAlertDialog() {
    bool _isChecked1 = false;
    bool _isChecked2 = false;
    List<bool> selected = [false, false];
    void _updateCheckboxes(int index) {
      setState(() {
        if (index == 1) {
          _isChecked1 = !_isChecked1;
          _isChecked2 = false;
          services = controller.ser1;
        } else if (index == 2) {
          _isChecked2 = !_isChecked2;
          _isChecked1 = false;
          services = controller.ser2;
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
                    title: Text(controller.ser1),
                    value: _isChecked1,
                    onChanged: (bool? value) {
                      _updateCheckboxes(1);
                      setState(() {
                        _isChecked1 = value!;
                        var isChecked1 = "";
                        if (_isChecked1 == true) {
                          isChecked1 = controller.ser1;
                          controller.services = "1";
                        } else {
                          isChecked1 = "";
                        }
                        selected[0] = _isChecked1;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(controller.ser2),
                    value: _isChecked2,
                    onChanged: (bool? value) {
                      _updateCheckboxes(2);
                      setState(() {
                        _isChecked2 = value!;
                        var isChecked2 = "";
                        if (_isChecked2 == true) {
                          isChecked2 = controller.ser2;
                          controller.services = "2";
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
    bool _isChecked1 = false;
    bool _isChecked2 = false;
    bool _isChecked3 = false;
    bool _isChecked4 = false;
    bool _isChecked5 = false;
    bool _isChecked6 = false;
    bool _isChecked7 = false;

    List<bool> selected = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
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
                      title: Text(controller.fi1),
                      value: _isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked1 = value!;
                          var isChecked1 = "";
                          if (_isChecked1 == true) {
                            isChecked1 = controller.fi1;
                            controller.allFields.add("1");
                          } else {
                            isChecked1 = "";
                            controller.allFields.remove("1");
                          }
                          selected[0] = _isChecked1;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(controller.fi2),
                      value: _isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked2 = value!;
                          var isChecked2 = "";
                          if (_isChecked2 == true) {
                            isChecked2 = controller.fi2;
                            controller.allFields.add("2");
                          } else {
                            isChecked2 = "";
                            controller.allFields.remove("2");
                          }
                          selected[1] = _isChecked2;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(controller.fi3),
                      value: _isChecked3,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked3 = value!;
                          var isChecked3 = "";
                          if (_isChecked3 == true) {
                            isChecked3 = controller.fi3;
                            controller.allFields.add("3");
                          } else {
                            isChecked3 = "";
                            controller.allFields.remove("3");
                          }
                          selected[2] = _isChecked3;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(controller.fi4),
                      value: _isChecked4,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked4 = value!;
                          var isChecked4 = "";
                          if (_isChecked4 == true) {
                            isChecked4 = controller.fi4;
                            controller.allFields.add("4");
                          } else {
                            isChecked4 = "";
                            controller.allFields.remove("4");
                          }
                          selected[3] = _isChecked4;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(controller.fi5),
                      value: _isChecked5,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked5 = value!;
                          var isChecked5 = "";
                          if (_isChecked5 == true) {
                            isChecked5 = controller.fi5;
                            controller.allFields.add("5");
                          } else {
                            isChecked5 = "";
                            controller.allFields.remove("5");
                          }
                          selected[4] = _isChecked5;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(controller.fi6),
                      value: _isChecked6,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked6 = value!;
                          var isChecked6 = "";
                          if (_isChecked6 == true) {
                            isChecked6 = controller.fi6;
                            controller.allFields.add("6");
                          } else {
                            isChecked6 = "";
                            controller.allFields.remove("6");
                          }
                          selected[5] = _isChecked6;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(controller.fi7),
                      value: _isChecked7,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked7 = value!;
                          var isChecked7 = "";
                          if (_isChecked7 == true) {
                            isChecked7 = controller.fi7;
                            controller.allFields.add("7");
                          } else {
                            isChecked7 = "";
                            controller.allFields.remove("7");
                          }
                          selected[6] = _isChecked7;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
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
}
