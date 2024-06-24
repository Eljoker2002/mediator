import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/app_colors.dart';

class CompanyProfileScreen extends StatelessWidget {
   CompanyProfileScreen({super.key,required this.name,required this.website,required this.about,required this.email});
  String name;
  String website='';
  String about='';
  String email='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 180.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(35.sp),
                        bottomLeft: Radius.circular(35.sp)),
                    color:AppColors.blueF9,
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 70.h, horizontal: 35.w),
                  child: Column(
                    children: [
                      Icon(Icons.arrow_back_ios),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 135.h, left: 45.w),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50.sp,
                        backgroundColor: AppColors.whiteF6,
                      ),
                      Image(
                        image: AssetImage(
                          "assets/images/ion_person-circle (1).png",
                        ),
                        width: 100.w,
                        height: 90.h,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    website,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.gray8E,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColors.gray8F,
                      ),
                      Text(
                        "Mansoura, Egypt",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray8F,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 4.w,
                      ),
                      Icon(Icons.email_outlined,size: 17.sp,color: AppColors.gray8F,),
                      SizedBox(
                        width: 3.5.w,
                      ),
                      Text(
                        email,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray8F,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 360.w,
                        height: 170.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          color: AppColors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "About",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    about,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.gray8F,
                                      ),
                                    ),
                                  ),

                                    ],
                                  ),
                                ),
                          ),
                        ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Container(
                        width: 360.w,
                        height: 170.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          color: AppColors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Applications",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),

                                Expanded(
                                  child: ListView.builder(
                                    padding: EdgeInsets.zero,
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                    return   Padding(
                                      padding:EdgeInsets.only(bottom: 8.h),
                                      child: Container(
                                        width: 296.w,
                                        height: 61.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.grayC6),
                                          borderRadius: BorderRadius.circular(8.sp),
                                          color: AppColors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0.sp),
                                          child: SingleChildScrollView(
                                            scrollDirection:Axis.horizontal ,
                                            child: Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Image(
                                                    image: AssetImage(
                                                      "assets/images/InnovaDigits.png",
                                                    )),
                                                SizedBox(
                                                  width: 11.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "UI/UX Designer Job",
                                                      style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          fontSize: 11.sp,
                                                          fontWeight: FontWeight.w600,
                                                          color: AppColors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Senior UI/UX designer - Part Time",
                                                      style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontWeight: FontWeight.w600,
                                                          color: AppColors.gray8F,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width:25.w),
                                                Icon(Icons.arrow_forward_ios_sharp,size: 12.sp,)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },),
                                ),
                                SizedBox(height: 8.h),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
