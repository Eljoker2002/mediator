import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding: EdgeInsets.only(top: 45.h,left: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios)) ,
                  Container(
                    width: 280.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        color: AppColors.grayEE,
                        boxShadow: const [
                          BoxShadow(
                              color:AppColors.grayA8,
                              offset: Offset(0, 5),
                              blurRadius: 3,
                              spreadRadius: 0),
                        ]),
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon:Icon(Icons.search_sharp,color: AppColors.grayA8,)),
                        SizedBox(width: 5.w,),
                        Text(
                         "Search",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grayA8,
                            ),
                          ),
                        ),
                        SizedBox(width: 150.w,),
                        Icon(FontAwesomeIcons.sliders,size: 15.sp,)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h,),
              Padding(
                padding:  EdgeInsets.only(right: 150.w),
                child: Text(
                  "You can work with",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blue0C,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
             RefactorSearch(text1: "Mohamed Khaled", text2: "Senior AI"),
              SizedBox(height: 16.h,),
              RefactorSearch(text1: "Mohamed Khaled", text2: "Senior AI"),
              SizedBox(height: 16.h,),
              RefactorSearch(text1: "Mohamed Khaled", text2: "Senior AI"),
              SizedBox(height: 16.h,),
              RefactorSearch(text1: "Mohamed Khaled", text2: "Senior AI"),
              SizedBox(height: 16.h,),
              RefactorSearch(text1: "Mohamed Khaled", text2: "Senior AI"),
              SizedBox(height: 16.h,),
              RefactorSearch(text1: "Mohamed Khaled", text2: "Senior AI"),
              SizedBox(height: 16.h,),
              RefactorSearch(text1: "Mohamed Khaled", text2: "Senior AI"),
              SizedBox(height: 16.h,),

            ],
          ),
        ),
      ),
    );
  }
}
class RefactorSearch extends StatelessWidget {
  final String text1;
  final String text2;

  const RefactorSearch({
    Key? key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 320.w,
      height: 78.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
        color: AppColors.pinkDF,
      ),
      child: Row(
        children: [
          SizedBox(width: 20.w,),
          Image(
              image: AssetImage(
                "assets/images/person.png",
              )),
          SizedBox(width: 10.w,),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Column(
              children: [
                Text(
                 text1,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 85.w),
                  child: Text(
                    text2,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.gray83,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 61.w,),
          Icon(
            PhosphorIcons.notePencil(
                PhosphorIconsStyle.bold),
            //size: 70.sp,
            color: AppColors.black,
          ),
          SizedBox(width: 10.w,),
        ],
      ),
    );
  }
}
