import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';
import '../complete_profile_screen/organization_profile/refactor_textformfield.dart';

class SeminarsTraining extends StatelessWidget {
  const SeminarsTraining({super.key});

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
                    padding: EdgeInsets.only(left: 55.w),
                    child: Text(
                      "Seminars & Training",
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
                    "Topic",
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
                    "Organizer",
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
                            "From",
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
                            "To",
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
