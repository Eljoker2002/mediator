import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:mediator/features/complete_profile_screen/organization_profile/refactor_textformfield.dart';
import 'package:mediator/widgets/app_button.dart';

class ApplyJobScreen extends StatelessWidget {
  const ApplyJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: SingleChildScrollView(
        child: Padding(
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
                    SizedBox(height: 15.h),
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
                    SizedBox(height: 15.h),
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
                    SizedBox(height: 15.h),
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
                    Container(
                      color:AppColors.white ,
                      child: IntlPhoneField(
                        flagsButtonPadding: EdgeInsets.symmetric(horizontal: 15.w),
                        showDropdownIcon:false,
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
      ),
    );
  }
}
