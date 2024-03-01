import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';
import '../complete_profile_screen/organization_profile/refactor_textformfield.dart';

class AwardsAchievements extends StatelessWidget {
  const AwardsAchievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding:EdgeInsets.only(top: 35.h),
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
                    padding: EdgeInsets.only(left: 35.w),
                    child: Text(
                      "Awards & Achievements",
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
                    "Issuer",
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
                  Text(
                    "Date Awarded",
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
                    icon: Icons.arrow_drop_down,
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "Description(Optional)",
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
                    height: 130.h,
                    maxLines: 120,
                  ),
                ],
              ),
            ),
            SizedBox(height: 52.h),
            AppButton(
              radius: 10.sp,
              title: "Save",
              onTap: () {},
              color: AppColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
