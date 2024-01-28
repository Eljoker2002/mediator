import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import 'package:mediator/widgets/app_button.dart';

class ApplyJobScreen extends StatelessWidget {
  const ApplyJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
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
                    padding: EdgeInsets.symmetric(horizontal: 80.h),
                    child: Text(
                      "Apply Job",
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
            SizedBox(height: 53.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "First Name",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.gray83,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  RefactorTextFormField(
                    changeHeight: true,
                    height: 38.h,
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    "Last Name",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.gray83,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  RefactorTextFormField(
                    changeHeight: true,
                    height: 38.h,
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    "Email",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.gray83,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  RefactorTextFormField(
                    changeHeight: true,
                    height: 38.h,
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    "Phone Number",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.gray83,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  RefactorTextFormField(
                    changeHeight: true,
                    height: 38.h,
                  ),
                  SizedBox(height: 22.h),
                  Text(
                    "Upload your CV",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.gray83,
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
                              size: 24.sp, color: Color(0xFF3D7DFF)),
                          SizedBox(
                            width: 9.w,
                          ),
                          Text(
                            "Add File",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF3D7DFF),
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
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.grayA6,
                              spreadRadius: 1.sp,
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 22.h),
            AppButton(
              title: "Apply",
              onTap: () {},
              color: AppColors.pink,
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
