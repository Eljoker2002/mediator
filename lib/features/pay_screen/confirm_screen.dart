import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/widgets/app_button.dart';

import '../../core/app_colors.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 50.h,
              horizontal: 25.w,
            ),
            child: Icon(
              Icons.arrow_back_ios,
              size: 18.sp,
            ),
          ),
          SizedBox(height: 100.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.sp),
                    topRight: Radius.circular(50.sp),
                  )),
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 100.h),
                child: Column(
                  children: [
                    Container(
                      width: 348.w,
                      height: 48.h,
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 20.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Add Card",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray6E,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.grayF0,
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    Container(
                      height: 120.h,
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 20.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Purchase Information:",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.pink,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(
                                "Course Price",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: AppColors.grayA8,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$ 25.00",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: AppColors.grayA8,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(
                                "Total Cost",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: AppColors.pink,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$ 25.00",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: AppColors.pink,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.grayF0,
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                    ),
                    Spacer(),
                    AppButton(
                      title: "Confirm",
                      onTap: () {},
                      color: AppColors.pink,
                      radius: 12.sp,
                    ),
                    SizedBox(height: 45.h),
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
