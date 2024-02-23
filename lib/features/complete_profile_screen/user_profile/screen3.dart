import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/widgets/app_button.dart';

import '../../../core/app_colors.dart';

class ProfileScreen1 extends StatelessWidget {
  const ProfileScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueCF,
      body: SingleChildScrollView(
        child: Column(
          children: [
            RefactoviewProfile(
                text1: "UI/UX designer",
                text2: "Mohamed Khaled",
                text3: "Intermediate UI/UX design",
                text4:"43",
                text5: "21",
                text6: "5",
                text7: "Mohamed did a great job when meeting newcomers in the office yesterday . I’m proud of him.",
                text8:"Sam took the extra effort to help me with my project last week. He’s a five-star team-lead !")
          ],
        ),
      ),
    );
  }
}

// class ProfileScreen2 extends StatelessWidget {
//   const ProfileScreen2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.yellowFF,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             RefactoviewProfile(
//                 text1: "Web developer",
//                 text2: "Salah Ahmed",
//                 text3: "Senior Web developer",
//                 text4:"25",
//                 text5: "11",
//                 text6: "2",
//                 text7: "Salah did a great job when meeting newcomers in the office yesterday . I’m proud of him.",
//                 text8:"Sam took the extra effort to help me with my project last week. He’s a five-star team-lead !")
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileScreen3 extends StatelessWidget {
//   const ProfileScreen3({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.pinkFF,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             RefactoviewProfile(
//                 text1: "Flutter developer",
//                 text2: "Omar Mohamed",
//                 text3: "Senior Flutter developer",
//                 text4:"32",
//                 text5: "18",
//                 text6: "3",
//                 text7: "Omar did a great job when meeting newcomers in the office yesterday . I’m proud of him.",
//                 text8:"Sam took the extra effort to help me with my project last week. He’s a five-star team-lead !")
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileScreen4 extends StatelessWidget {
//   const ProfileScreen4({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.orangeFD,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             RefactoviewProfile(
//                 text1: "Android developer",
//                 text2: "Ali Rashed",
//                 text3: "Junior Android developer",
//                 text4:"47",
//                 text5: "27",
//                 text6: "6",
//                 text7: "Ali did a great job when meeting newcomers in the office yesterday . I’m proud of him.",
//                 text8:"Sam took the extra effort to help me with my project last week. He’s a five-star team-lead !")
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileScreen5 extends StatelessWidget {
//   const ProfileScreen5({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.greenEA,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             RefactoviewProfile(
//                 text1: "IOS developer",
//                 text2: "Mohamed Sherif",
//                 text3: "Intermediate IOS developer",
//                 text4:"33",
//                 text5: "17",
//                 text6: "3",
//                 text7: "Mohamed did a great job when meeting newcomers in the office yesterday . I’m proud of him.",
//                 text8:"Sam took the extra effort to help me with my project last week. He’s a five-star team-lead !")
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileScreen6 extends StatelessWidget {
//   const ProfileScreen6({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.blueBC,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             RefactoviewProfile(
//                 text1: "Data Scientist",
//                 text2: "Abdelrahman Kareem",
//                 text3: "Junior Data Scientist",
//                 text4:"44",
//                 text5: "21",
//                 text6: "4",
//                 text7: "Abdelrahman did a great job when meeting newcomers in the office yesterday . I’m proud of him.",
//                 text8:"Sam took the extra effort to help me with my project last week. He’s a five-star team-lead !")
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileScreen7 extends StatelessWidget {
//   const ProfileScreen7({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.pinkDF,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             RefactoviewProfile(
//                 text1: "             AI",
//                 text2: "Adel Ahmed",
//                 text3: "Intermediate AI",
//                 text4:"52",
//                 text5: "24",
//                 text6: "8",
//                 text7: "Adel did a great job when meeting newcomers in the office yesterday . I’m proud of him.",
//                 text8:"Sam took the extra effort to help me with my project last week. He’s a five-star team-lead !")
//           ],
//         ),
//       ),
//     );
//   }
// }

class RefactoviewProfile extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final String text7;
  final String text8;
  const RefactoviewProfile({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    required this.text7,
    required this.text8,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.w, top: 71.h),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios),
              SizedBox(
                width: 70.w,
              ),
              Text(
                text1,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Image(
            image: AssetImage(
          "assets/images/ion_person-circle (1).png",
        )),
        SizedBox(
          height: 12.h,
        ),
        Text(
          text2,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          text3,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.gray83,
            ),
          ),
        ),
        SizedBox(
          height: 35.h,
        ),
        Container(
          width: double.infinity,
          height: 450.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(45.sp),
                topLeft: Radius.circular(45.sp)),
            color: AppColors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.h, right: 250.w),
                child: Text(
                  "stats",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.h),
                child: Row(
                  children: [
                    Container(
                      width: 72.sp,
                      height: 72.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        color: AppColors.grayF6,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 13.h),
                        child: Column(
                          children: [
                            Icon(Icons.thumb_up),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Row(
                                children: [
                                  Text(
                                    text4,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "Likes",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.gray8F,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 72.sp,
                      height: 72.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        color: AppColors.grayF6,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 13.h),
                        child: Column(
                          children: [
                            Icon(CupertinoIcons.heart_fill),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Row(
                                children: [
                                  Text(
                                    text5,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "thanks",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.gray8F,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 72.sp,
                      height: 72.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        color: AppColors.grayF6,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 13.h),
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage(
                              "assets/images/basil_award-solid.png",
                            )),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Row(
                                children: [
                                  Text(
                                    text6,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "credits",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.gray8F,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(top: 20.h, right: 185.w),
                child: Text(
                  "Requirement",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                width: 320.w,
                height: 86.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                  color: AppColors.grayF6,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h, left: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "General",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        text7,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.gray8F,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                width: 320.w,
                height: 86.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                  color: AppColors.grayF6,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h, left: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Attitude",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        text8,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.gray8F,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              AppButton(
                title: "View Profile",
                onTap: () {},
                color: AppColors.pink,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
