import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/widgets/app_button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/app_colors.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 15.w),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 27.h),
                  child: Image(
                      image: AssetImage(
                    "assets/images/person-circle.png",
                  )),
                ),
                SizedBox(width: 14.w),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.h, top: 25.h),
                      child: Text(
                        "Good Morning",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.gray85,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 45.w),
                      child: Text(
                        "NAME",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.w,
                ),
                Image(
                    image: AssetImage(
                  "assets/images/wave_hand.png",
                )),
                SizedBox(
                  width: 80.w,
                ),
                Icon(
                  Icons.search,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Icon(PhosphorIcons.chatCircleDots(PhosphorIconsStyle.fill)),
                SizedBox(
                  width: 2.w,
                ),
                Icon(Icons.notifications),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Container(
                width: 302.w,
                height: 85.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: AppColors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: AppColors.grayA8,
                          offset: Offset(0, 5),
                          blurRadius: 3,
                          spreadRadius: 0),
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 10.h),
                  child: TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add your own post.',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grayA8,
                        ),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 270.w),
              child: Text(
                "Posts",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                    child: Container(
                      width: 302.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.sp),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0.sp),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage(
                                    "assets/images/person-circle.png",
                                  ),
                                  width: 40.sp,
                                ),
                                SizedBox(
                                  width: 11.w,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Company Name",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.black,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Jan 21, 2024 . 12:30 PM ",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.gray8E,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.w),
                              child: Text(
                                "If you are looking for a new challenge and want to work with a great team , send us your cv.",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.gray8E,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    color: AppColors.gray71,
                                  ),
                                  SizedBox(width: 25.w),
                                  Icon(CupertinoIcons.heart_fill,
                                      color: AppColors.gray71),
                                  SizedBox(width: 25.w),
                                  Icon(
                                      PhosphorIcons.chatCircleDots(
                                          PhosphorIconsStyle.fill),
                                      color: AppColors.gray71),
                                  SizedBox(width: 25.w),
                                  Container(
                                    color: Colors.white,
                                    child: Container(
                                      height: 24.h,
                                      width: 104.w,
                                      child: Center(
                                        child: Text(
                                          "View Profile",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontSize: 9.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: AppColors.gray71,
                                          borderRadius:
                                              BorderRadius.circular(20.sp)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
