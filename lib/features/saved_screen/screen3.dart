import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';
import '../complete_profile_screen/organization_profile/refactor_textformfield.dart';

class CertificationAndLicenses extends StatefulWidget {
  const CertificationAndLicenses({super.key});

  @override
  State<CertificationAndLicenses> createState() => _CertificationAndLicensesState();
}

class _CertificationAndLicensesState extends State<CertificationAndLicenses> {
  bool firstValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 35.h),
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
                      padding: EdgeInsets.only(left: 30.w),
                      child: Text(
                        "Certification and Licenses",
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
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Tittle",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: AppColors.grayA8,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    RefactorTextFormField(
                      changeHeight: true,
                      height: 38.h,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "Publishing Organization",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color:AppColors.grayA8,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    RefactorTextFormField(
                      changeHeight: true,
                      height: 38.h,
        
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date of issue ",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color:AppColors.grayA8,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            RefactorTextFormField(
                              changeHeight: true,
                              height: 38.h,
                              width: 146.w,
                              icon: Icons.arrow_drop_down,
                            ),
                          ],
                        ),
                        SizedBox(width: 10.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expiration Date",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color:AppColors.grayA8,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            RefactorTextFormField(
                              changeHeight: true,
                              height: 38.h,
                              width: 146.w,
                              icon: Icons.arrow_drop_down,
                            ),
                          ],
                        ),
                      ],
                    ),
                   Row(
                     children: [
                       Checkbox(value: firstValue, onChanged: (value){},),
                       SizedBox(width: 1.w,),
                       Text(
                         "This credential will not expire.",
                         style: GoogleFonts.inter(
                           textStyle: TextStyle(
                             color:AppColors.black,
                             fontSize: 14.sp,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ),
                     ],
                   )
                      ],
                ),
              ),
              SizedBox(height: 160.h),
              AppButton(
                radius: 10.sp,
                title: "Save",
                onTap: () {},
                color: AppColors.black,
              ),
            ],
          ),
        ),
      ),

    );
  }
}

