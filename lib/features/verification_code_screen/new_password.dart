import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/verification_code_screen/password1.dart';

import '../../core/app_colors.dart';
import '../../core/validator_utils/validator_utils.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool visible = true;
  bool value = false;
  @override
  void initState() {
    // LoginApi().getUsers();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      //key: controller.formKey,
      child: Scaffold(
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
                    "Set New Password",
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
                image: AssetImage("assets/images/new_password.png"),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 328.w,
                height: 43.h,
                child: AppTextField(

                //  onSaved: (v) => controller.email = v,
                  icon: Icons.lock,
                  labelText: 'New Password',
                  validator: ValidatorUtils.emailForLogin,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    icon: visible
                        ? Icon(
                      Icons.visibility_off,
                      color: AppColors.grayCB,
                    )
                        : Icon(
                      Icons.remove_red_eye,
                      color: AppColors.gray8F,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              SizedBox(
                width: 328.w,
                height: 43.h,
                child: AppTextField(
                 // onSaved: (v) => controller.password = v,
                  obscureText: visible,
                  icon: Icons.lock,
                  validator: ValidatorUtils.passwordForLogin,
                  labelText: 'Confirm New Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    icon: visible
                        ? Icon(
                      Icons.visibility_off,
                      color: AppColors.grayCB,
                    )
                        : Icon(
                      Icons.remove_red_eye,
                      color: AppColors.gray8F,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 16.w,
                    height: 16.h,
                    child: Transform.scale(
                      scale: .8.sp,
                      child: Checkbox(
                        activeColor: AppColors.blue0C,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                        ),
                        value: value,
                        onChanged: (v) {
                          setState(() {
                            value = v!;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 7.w),
                  Text(
                    "Remember me",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0C002E),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              AppButton(
                radius: 12.sp,
                title: "Save New Password",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
