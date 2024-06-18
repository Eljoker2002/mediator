import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/app_colors.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

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
                    "Ali Rashed",
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
                    "Junior Android developer",
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
                      Image(
                          image: AssetImage(
                        "assets/images/ball.png",
                      )),
                      SizedBox(
                        width: 3.5.w,
                      ),
                      Text(
                        "Arabic, English",
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
                                    "Short Bio",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    "Ali did a great job when meeting newcomers in the",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.gray8E,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 19.h,
                                  ),
                                  Text(
                                    "Skills:",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 72.w,
                                        height: 22.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.grayC6),
                                          borderRadius:
                                              BorderRadius.circular(8.sp),
                                          color: AppColors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Java",
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.gray8F,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Container(
                                        width: 72.w,
                                        height: 22.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.grayC6),
                                          borderRadius:
                                              BorderRadius.circular(8.sp),
                                          color: AppColors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Analysis",
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.gray8F,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Container(
                                        width: 72.w,
                                        height: 22.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.grayC6),
                                          borderRadius:
                                              BorderRadius.circular(8.sp),
                                          color: AppColors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Team-work",
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.gray8F,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 104.w,
                                        height: 22.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.grayC6),
                                          borderRadius:
                                              BorderRadius.circular(8.sp),
                                          color: AppColors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Remote Work",
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.gray8F,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Container(
                                        width: 56.w,
                                        height: 22.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.grayC6),
                                          borderRadius:
                                              BorderRadius.circular(8.sp),
                                          color: AppColors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "OOP",
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.gray8F,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Container(
                                        width: 93.w,
                                        height: 23.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.grayC6),
                                          borderRadius:
                                              BorderRadius.circular(8.sp),
                                          color: AppColors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Solving Problems",
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.gray8F,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
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
                                  "Work Experience",
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
                                    itemBuilder: (context, index){
                                      return Padding(
                                        padding:  EdgeInsets.only(bottom: 8.h),
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
                                            child: Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Image(
                                                    image: AssetImage(
                                                      "assets/images/codesoft.png",
                                                    )),
                                                SizedBox(
                                                  width: 11.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Android Job",
                                                      style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          fontSize: 11.sp,
                                                          fontWeight: FontWeight.w600,
                                                          color: AppColors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "SmartTech",
                                                      style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontWeight: FontWeight.w600,
                                                          color: AppColors.gray8F,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Part Time",
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
                                                SizedBox(width: 75.w),
                                                Text(
                                                  "2018 - Present",
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 9.sp,
                                                      fontWeight: FontWeight.w600,
                                                      color: AppColors.gray8F,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  
                                  ),
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
                                  "Education",
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
                                  itemBuilder: (context, index){
                                    return Padding(
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
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Image(
                                                    image: AssetImage(
                                                      "assets/images/fcis.png",
                                                    )),
                                                SizedBox(
                                                  width: 11.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Mansoura University",
                                                      style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          fontSize: 11.sp,
                                                          fontWeight: FontWeight.w600,
                                                          color: AppColors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Faculty of Computer and Information Science",
                                                      style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontWeight: FontWeight.w600,
                                                          color: AppColors.gray8F,
                                                        ),
                                                      ),
                                                    ),
                                                    // Text(
                                                    //   "Part Time",
                                                    //   style: GoogleFonts.poppins(
                                                    //     textStyle: TextStyle(
                                                    //       fontSize: 10.sp,
                                                    //       fontWeight: FontWeight.w600,
                                                    //       color: AppColors.gray8F,
                                                    //     ),
                                                    //   ),
                                                    // ),
                                                  ],
                                                ),
                                                SizedBox(width: 75.w),
                                                Text(
                                                  "2011 - 2015",
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      fontSize: 9.sp,
                                                      fontWeight: FontWeight.w600,
                                                      color: AppColors.gray8F,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                // Container(
                                //   width: 296.w,
                                //   height: 61.h,
                                //   decoration: BoxDecoration(
                                //     border: Border.all(color:AppColors.grayC6 ),
                                //     borderRadius: BorderRadius.circular(8.sp),
                                //     color: AppColors.white,
                                //   ),
                                //   child:Padding(
                                //     padding:EdgeInsets.all(12.0.sp),
                                //     child: Row(
                                //       crossAxisAlignment: CrossAxisAlignment.start,
                                //       children: [
                                //         Image(image: AssetImage("assets/images/track2.png",)),
                                //         SizedBox(width:11.w,),
                                //         Column(
                                //           crossAxisAlignment: CrossAxisAlignment.start,
                                //           children: [
                                //             Text(
                                //               "Android Job",
                                //               style: GoogleFonts.poppins(
                                //                 textStyle: TextStyle(
                                //                   fontSize: 11.sp,
                                //                   fontWeight: FontWeight.w600,
                                //                   color: AppColors.black,
                                //                 ),
                                //               ),
                                //             ),
                                //             Text(
                                //               "Code Soft",
                                //               style: GoogleFonts.poppins(
                                //                 textStyle: TextStyle(
                                //                   fontSize: 10.sp,
                                //                   fontWeight: FontWeight.w600,
                                //                   color: AppColors.gray8F,
                                //                 ),
                                //               ),
                                //             ),
                                //             Text(
                                //               "Full Time",
                                //               style: GoogleFonts.poppins(
                                //                 textStyle: TextStyle(
                                //                   fontSize: 10.sp,
                                //                   fontWeight: FontWeight.w600,
                                //                   color: AppColors.gray8F,
                                //                 ),
                                //               ),
                                //             ),
                                //           ],
                                //         ),
                                //         SizedBox(width: 75.w),
                                //         Text(
                                //           "2015 -2018",
                                //           style: GoogleFonts.poppins(
                                //             textStyle: TextStyle(
                                //               fontSize: 9.sp,
                                //               fontWeight: FontWeight.w600,
                                //               color: AppColors.gray8F,
                                //             ),
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
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
