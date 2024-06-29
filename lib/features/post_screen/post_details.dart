import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/core/validator_utils/validator_utils.dart';
import 'package:mediator/features/post_screen/post_api.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';
import '../complete_profile_screen/organization_profile/refactor_textformfield.dart';

class PostDetails extends StatefulWidget {
  PostDetails({super.key, required this.token});
  String token;

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  Posts posts = Posts();
  String type = "Type";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Form(
        key: posts.formKey,
        child: Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20.sp,
                        color: AppColors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 70.w),
                        child: Text(
                          "Post Details",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: AppColors.blue0C,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Type",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.grayA8,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0.h),
                        child: InkWell(
                          onTap: () {
                            showAlertDialog();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8.sp),
                            ),
                            width: double.infinity,
                            height: 40.h,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.w, right: 12.w),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      type,
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
                      SizedBox(height: 7.h),
                      Text(
                        "Title",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.grayA8,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      RefactorTextFormField(
                        controller: posts.title,
                        validator: ValidatorUtils.required,
                        changeHeight: true,
                        height: 38.h,
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "Address",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.grayA8,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      RefactorTextFormField(
                        controller: posts.location,
                        validator: ValidatorUtils.required,
                        changeHeight: true,
                        height: 38.h,
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "Status",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.grayA8,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      RefactorTextFormField(
                        controller: posts.status,
                        validator: ValidatorUtils.required,
                        changeHeight: true,
                        height: 38.h,
                        icon: Icons.arrow_drop_down,
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "Description",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.grayA8,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      RefactorTextFormField(
                        controller: posts.description,
                        validator: ValidatorUtils.required,
                        changeHeight: true,
                        height: 38.h,
                        icon: Icons.arrow_drop_down,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 52.h),
                AppButton(
                  radius: 10.sp,
                  title: "Save",
                  onTap: () async {
                    posts.authorization = widget.token;
                    await posts.SendPost(context);
                    RouteUtils.pop(context: context);
                  },
                  color: AppColors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showAlertDialog() {
    String skill1 = "Jop";
    String skill2 = "Internship";
    String skill3 = "Tasks";
    String skill4 = "Competition";
    bool _isChecked1 = false;
    bool _isChecked2 = false;
    bool _isChecked3 = false;
    bool _isChecked4 = false;
    List<bool> selected = [false, false, false, false];
    void _updateCheckboxes(int index) {
      setState(() {
        if (index == 1) {
          _isChecked1 = !_isChecked1;
          _isChecked2 = false;
          type = skill1;
          posts.type = type;
        } else if (index == 2) {
          _isChecked2 = !_isChecked2;
          _isChecked1 = false;
          type = skill2;
          posts.type = type;
        } else if (index == 3) {
          _isChecked3 = !_isChecked3;
          _isChecked3 = false;
          type = skill3;
          posts.type = type;
        } else if (index == 4) {
          _isChecked4 = !_isChecked4;
          _isChecked4 = false;
          type = skill4;
          posts.type = type;
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
                  CheckboxListTile(
                    title: Text(skill3),
                    value: _isChecked3,
                    onChanged: (bool? value) {
                      _updateCheckboxes(3);
                      setState(() {
                        _isChecked3 = value!;
                        var isChecked3 = "";
                        if (_isChecked3 == true) {
                          isChecked3 = "$skill3";
                        } else {
                          isChecked3 = "";
                        }
                        selected[2] = _isChecked3;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(skill4),
                    value: _isChecked4,
                    onChanged: (bool? value) {
                      _updateCheckboxes(4);
                      setState(() {
                        _isChecked4 = value!;
                        var isChecked4 = "";
                        if (_isChecked4 == true) {
                          isChecked4 = "$skill4";
                        } else {
                          isChecked4 = "";
                        }
                        selected[3] = _isChecked4;
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
}
