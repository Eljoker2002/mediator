import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:mediator/widgets/app_button.dart';

import '../welcome_screens/widgets/welcome_text.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: AppColors.white,
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
          ),SizedBox(height: 13.h,),
          WelcomeText(
            title: "Enter Verification Code",
            height: 29.h,
            width: 274.w,
            fontSize: 24.w,
          ),SizedBox(height: 96.h,),
          Container(
            child: WelcomeText2(
                fontSize: 13.w,
                height: 58.h,
                width: 279.w,
                title: '''Please type the verification code sent to 
                         +20 1000000000''',
                fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: 40.h,),
          OtpTextField(
            fieldWidth: 48.w,
            numberOfFields: 4,
            borderRadius: BorderRadius.circular(8),
            borderColor: Color(0xFFD6D6D6),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode){
              showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  }
              );
            }, // end onSubmit
          ),
          SizedBox(height: 180.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t receive the verification code ?",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF9C9C9C),
                  ),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                "Recent Code",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w600,
                    color: AppColors.red,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h,),
          AppButton(title: "Verify", onTap: (){})
          ],
      ),
        ),
      ),
    );
  }
}
