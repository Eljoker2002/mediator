import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/skills_controller_api.dart';
import 'package:mediator/widgets/snack_bar.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';

class UserJob extends StatelessWidget {
  String jobTitle;
  String companyList;
  String jobDescription;
  String jobAddress;
  String jobStatus;

  SkillsControllerApi skillsControllerApi = SkillsControllerApi();

  UserJob(
      {super.key,
      required this.jobTitle,
      required this.jobStatus,
      required this.jobDescription,
      required this.companyList,
      required this.jobAddress});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 50.h,
              horizontal: 25.w,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 18.sp,
                ),
                SizedBox(
                  width: 92.w,
                ),
                Text(
                  "Job View",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: AppColors.blue0C,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.sp),
                  topRight: Radius.circular(50.sp),
                ),
              ),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Text(
                      jobTitle,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: AppColors.blue0C,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            companyList,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            jobStatus,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            jobAddress,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray8F,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Center(
                          child: Container(
                            height: 1.h,
                            width: 295.w,
                            color: AppColors.gray8F,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Text(
                            jobDescription,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: AppButton(
                            title: "Apply",
                            onTap: () {
                              RouteUtils.pop(context: context);
                              showSnackBar(context,
                                  title: "Applied Successfully",
                                  error: true,
                                  color: AppColors.black);
                            },
                            color: AppColors.pink,
                            radius: 12.sp,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
