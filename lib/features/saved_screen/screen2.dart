import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';
import '../complete_profile_screen/organization_profile/refactor_textformfield.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

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
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Projects",
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
                    "GitHub Link",
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
                    "Behance Link",
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
                    "Upload your CV",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.grayA8,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Row(children: [
                          Icon(Icons.file_upload_outlined,
                              size: 24.sp,color:AppColors.blue3D,
                          ),
                          SizedBox(
                            width: 9.w,
                          ),
                          Text(
                            "Add File",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color:AppColors.blue3D,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      width: 144.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: AppColors.whiteF6,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.grayD6,
                              spreadRadius: 1.sp,
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 180.h),
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
