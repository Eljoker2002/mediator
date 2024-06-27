import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';

class OrganizationApplication extends StatelessWidget {
  const OrganizationApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 35.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 130.w, ),
                child: Row(
                  children: [
                    Text(
                      "Application",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),SizedBox(width: 80.w),
                    Icon(Icons.search)
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              buildJobCard(),
              buildJobCard(),
              buildJobCard(),
              buildJobCard(),
              buildJobCard(),
              buildJobCard()
          
            ],
          ),
        ),
      ),
    );
  }
}


Widget buildJobCard() {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h, right: 10.w, left: 10.w),
    child: Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6.sp),
      ),
      child: buildJobCardContent(),
    ),
  );
}

Widget buildJobCardContent() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
    child: Row(
      children: [
        buildJobImage(),
        SizedBox(width: 10.w),
        buildJobDetails(),
        SizedBox(width: 30.w),
        buildJobIcon(),
      ],
    ),
  );
}

Widget buildJobImage() {
  return SizedBox(
    width: 50.w,
    child: Image(
      image: AssetImage("assets/images/apllication_person.png"),
      width: 60.w,
      height: 50.h,
    ),
  );
}

Widget buildJobDetails() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "UI/UX Designer Job",
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
      ),
      SizedBox(height: 1.h),
      Container(
        child: Text(
          "Senior UI/UX designer - Part Time",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.gray8F,
              fontSize: 10.sp,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildJobIcon() {
  return Padding(
    padding: EdgeInsets.only(bottom: 40.h),
    child: Icon(
      Icons.arrow_forward_ios_sharp,
      size: 14.sp,
    ),
  );
}