import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

class Password1 extends StatelessWidget {
  const Password1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding:EdgeInsets.only(top: 55.h,left: 10.w),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 18.sp,
                  color: AppColors.blue0C,
                ),
                SizedBox(width: 60.w),
                Text(
                  "Forgot Password",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blue0C,
                    ),
                  ),
                ),
              ],
            ),
            Image(

              image: AssetImage("assets/images/Forgot password-rafiki (2) 1.png"),
            ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text(
                 '''Select which contact details should we use to reset 
your password.''',
                 style: GoogleFonts.poppins(
                   textStyle: TextStyle(
                     fontSize: 11.sp,
                     fontWeight: FontWeight.w600,
                     color: AppColors.gray83,
                   ),
                 ),
               ),SizedBox(height: 20.h,),
               Padding(
                 padding:EdgeInsets.only(right: 20.w),
                 child: ContainerForget(text1: "via SMS",text2: "+201*******00",icon: Icons.phone,),
               ),
               SizedBox(height: 24.h,),
               Padding(
                 padding:EdgeInsets.only(right: 20.w),
                 child: ContainerForget(text1: "via Email",text2: "*******@gmail.com",icon: Icons.mail,),
               ),
             ],
           )
          ],
        ),
      ),
    );
  }
}
class ContainerForget extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData? icon;

  const ContainerForget({
    Key? key,
    required this.text1,
    required this.text2,
    required this.icon,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.w,
      height: 75.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        color: AppColors.white,
      ),
      child: Padding(
        padding:EdgeInsets.only(left: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.grayDE,
              child: Icon(icon,color:AppColors.black),
              radius: 27.sp,
            ),SizedBox(
              width: 8.w,
            ),Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 20.h),
                  child: Text(
                    text1,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.gray83,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.w),
                Text(
                text2,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
