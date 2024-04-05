import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';

class CompanySettings extends StatefulWidget {
  const CompanySettings({Key? key}) : super(key: key);

  @override
  State<CompanySettings> createState() => _CompanySettingsState();
}

class _CompanySettingsState extends State<CompanySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 17.sp,
                ),
                Spacer(flex: 5),
                Text(
                  "Settings",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: AppColors.blue0C,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Spacer(flex: 6),
              ],
            ),
            SizedBox(height: 10.h),
            SettingsText(
              text: 'Account',
              fontSize: 13,
              color: AppColors.grayA8,
            ),
            SizedBox(height: 5.h),
            SettingsRow(
              text: 'Company Information',
              image: 'assets/images/building.svg',
            ),
            SettingsRow(
              text: 'Linked Accounts',
              image: 'assets/images/link.svg',
            ),
            Divider(
              height: 25.h,
              color: AppColors.grayA6,
            ),
            SettingsText(
              text: 'General',
              fontSize: 13,
              color: AppColors.grayA8,
            ),
            SettingsRow(
              text: 'Notifications',
              image: 'assets/images/noti.svg',
            ),
            SettingsRow(
              text: 'Security',
              image: 'assets/images/true.svg',
            ),
            SettingsRow(
              isa: null,
              text: 'Dark Mode',
              image: 'assets/images/darkMode.svg',
            ),
            SettingsRow(
              text: 'Help Center',
              image: 'assets/images/ques.svg',
            ),
            Divider(
              height: 25.h,
              color: AppColors.grayA6,
            ),
            SettingsText(
              text: 'About',
              fontSize: 13,
              color: AppColors.grayA8,
            ),
            SettingsRow(
              text: 'Terms of Services',
              image: 'assets/images/+.svg',
            ),
            SettingsRow(
              text: 'About us',
              image: 'assets/images/i.svg',
            ),
            Divider(
              height: 25.h,
              color: AppColors.grayA6,
            ),
            SettingsText(
              text: 'General',
              fontSize: 13,
              color: AppColors.grayA8,
            ),
            SettingsRow(
              color: AppColors.red,
              text: 'Deactivate my account',
              image: 'assets/images/lock.svg',
            ),
            SettingsRow(
              isa: false,
              color: AppColors.red,
              text: 'Log out',
              image: 'assets/images/backDoor.svg',
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsText extends StatelessWidget {
  const SettingsText({
    Key? key,
    required this.text,
    this.color = AppColors.black,
    this.fontSize = 14,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class SettingsRow extends StatefulWidget {
  SettingsRow(
      {Key? key,
      required this.text,
      required this.image,
      this.color = AppColors.black,
      this.isa = true})
      : super(key: key);
  final String text;
  final String image;
  final Color color;
  final bool? isa;

  @override
  State<SettingsRow> createState() => _SettingsRowState();
}

class _SettingsRowState extends State<SettingsRow> {
  bool value1 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(
        children: [
          SvgPicture.asset(widget.image),
          SizedBox(width: 16.w),
          SettingsText(
            text: widget.text,
            color: widget.color,
          ),
          Spacer(),
          if (widget.isa == true)
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 11.sp,
              color: AppColors.gray4B,
            )
          else if (widget.isa == false)
            Container(
              width: 1,
              height: 1,
            )
          else if (widget.isa == null)
            Container(
              width: 20.w,
              height: 0.h,
              child: Transform.scale(
                scale: 0.6,
                child: Switch(
                  activeColor: AppColors.white,
                  activeTrackColor: AppColors.blue3D,
                  inactiveThumbColor: AppColors.white,
                  inactiveTrackColor: AppColors.grayE9,
                  value: value1,
                  onChanged: (v) {
                    value1 = v;
                    setState(() {});
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
