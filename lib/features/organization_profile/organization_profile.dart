import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/organization_profile/refactor_textformfield.dart';

import '../../core/app_colors.dart';
import '../welcome_screens/widgets/welcome_text.dart';

class OrganizationPorfile extends StatelessWidget {
  const OrganizationPorfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 44.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: AppColors.smoothGray, spreadRadius: 2)
                        ]),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 23,
                      color: AppColors.darkBlue,
                    )),
              ),
              WelcomeText(
                title: "Company Profile",
                height: 24.h,
                width: 162.w,
                fontSize: 20.w,
              ),
              SizedBox(
                height: 71.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 324.w,
                  child: RefactorTextFormField(text: "Company Name")),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 324.w,
                  child: RefactorTextFormField(text: "Field",icon: Icons.arrow_drop_down,)),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 324.w,
                  child: RefactorTextFormField(text: "Address")),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 324.w,
                  child: RefactorTextFormField(text: "Field",)),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 324.w,
                  child: RefactorTextFormField(text: "Website")),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 324.w,
                  child: RefactorTextFormField(text: "Socials (Optional)")),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 324.w,
                  child: RefactorTextFormField(text: "Which service is provided?",icon: Icons.arrow_drop_down,)),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  height: 40.h,
                  width: 324.w,
                  child: RefactorTextFormField(text: "About Company")),
            ],
          ),
        ),
      ),
    );
  }
}

