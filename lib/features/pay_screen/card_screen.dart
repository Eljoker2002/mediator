import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:mediator/features/pay_screen/text_form_field(Card).dart';
import 'package:mediator/features/welcome_screens/widgets/welcome_text.dart';
import 'package:mediator/widgets/app_button.dart';
import 'package:mediator/widgets/app_text_field.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  bool value1 = false;
  bool value2 = false;

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
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(height: 20.h),
                    WelcomeText(
                      title: "Add Card",
                      height: 30.h,
                      width: double.infinity,
                      fontSize: 20.sp,
                    ),
                    SizedBox(height: 20.h),
                    CardTextField(
                      labelText: 'Card Name',
                    ),
                    SizedBox(height: 15.h),
                    CardTextField(
                      labelText: "Card Number",
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        SizedBox(
                          width: 140.w,
                          child: CardTextField(
                            labelText: "Expiry Date",
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 140.w,
                          child: CardTextField(
                            labelText: "CVV",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 16.w,
                          height: 16.h,
                          child: Transform.scale(
                            scale: .8.sp,
                            child: Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6.sp),
                                ),
                              ),
                              value: value1,
                              onChanged: (v) {
                                setState(() {
                                  value1 = v!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          "I agree to the ",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blue0C,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Terms and Conditions",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.pink,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 16.w,
                          height: 16.h,
                          child: Transform.scale(
                            scale: .8.sp,
                            child: Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6.sp),
                                ),
                              ),
                              value: value2,
                              onChanged: (v) {
                                setState(() {
                                  value2 = v!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          "Save card details",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blue0C,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60.h),
                    AppButton(
                      color: AppColors.pink,
                      title: "Add",
                      onTap: () {},
                      radius: 12.sp,
                    ),
                    SizedBox(height: 10.h),
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
