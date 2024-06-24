import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/welcome_screens/widgets/welcome_text.dart';
import '../../core/app_colors.dart';
import '../../widgets/app_button.dart';

class ShowDetails extends StatelessWidget {
  const ShowDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 45.h,
              horizontal: 25.w,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 18.sp,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.sp),
                  topRight: Radius.circular(50.sp),
                ),
              ),
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 59.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WelcomeText(
                      title: "Flutter Developer Competition",
                      height: 20.h,
                      width: double.infinity,
                      fontSize: 19.sp,
                    ),
                    SizedBox(height: 25.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 42.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextPoppins(
                            text:
                                "Cairo , Egypt Intermediate Flutter Developer 18th March , 11am EGP",
                            color: AppColors.gray8F,
                          ),
                          Divider(height: 35.h),
                          TextPoppins(
                            fontSize: 13.sp,
                            text: "Competition description",
                            color: AppColors.black,
                          ),
                          SizedBox(height: 5.h),
                          TextPoppins(
                            text:
                                "-Lorem Ipsum is simply dummy text of the printing and typesetting industry. -Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                            color: AppColors.gray8F,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 15.h),
                          TextPoppins(
                            fontSize: 13.sp,
                            text: "Requirement",
                            color: AppColors.black,
                          ),
                          SizedBox(height: 5.h),
                          TextPoppins(
                            text:
                                "-Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. -Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                            color: AppColors.gray8F,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 20.h),
                          TextPoppins(
                            fontSize: 13.sp,
                            text: "Who applied for this competition ?",
                            color: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.w, vertical: 5.h),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 5.h),
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 15.w),
                            child: Row(
                              children: [
                                Container(
                                  width: 45.w,
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/person.png",
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextPoppins(
                                      text: "Salah Ahmed",
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    TextPoppins(
                                      text: "Intermediate Flutter developer",
                                      fontSize: 10,
                                      color: AppColors.gray83,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                                Row(
                                  children: [
                                    Icon(
                                      size: 24.sp,
                                      Icons.star_rate_outlined,
                                    ),
                                    SizedBox(width: 8.w),
                                    Icon(
                                      size: 18.sp,
                                      FontAwesomeIcons.award,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            width: double.infinity,
                            height: 60.h,
                            decoration: BoxDecoration(
                              color: AppColors.lPink2,
                              borderRadius: BorderRadius.circular(
                                12.sp,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextPoppins extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  const TextPoppins({
    super.key,
    required this.text,
    this.fontSize = 13,
    this.fontWeight = FontWeight.w700,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize.sp,
        ),
      ),
    );
  }
}
