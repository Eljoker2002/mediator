import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 55.h, left: 20.w),
        child: Column(children: [
          Row(
            children: [
              Icon(Icons.arrow_back_ios),
              SizedBox(width: 110.w),
              Text(
                textAlign: TextAlign.center,
                "Status",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blue0C,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.only(right: 75.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isChecked1 = !_isChecked1;
                    });
                  },
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      color: _isChecked1 ? Colors.blue : Colors.transparent,
                    ),
                    child: _isChecked1
                        ? Icon(
                            Icons.check,
                            size: 18.0,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                RefactorCheckboxText(
                    text1: "Looking for a jobs",
                    text2: '''I am looking for a job and i would like to 
accept job invitations.'''),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Padding(
            padding: EdgeInsets.only(right: 55.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isChecked2 = !_isChecked2;
                    });
                  },
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      color: _isChecked2 ? Colors.blue : Colors.transparent,
                    ),
                    child: _isChecked2
                        ? Icon(
                            Icons.check,
                            size: 18.0,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                RefactorCheckboxText(
                    text1: "Looking for an internships ",
                    text2: '''I am looking for an internship and
i would like to accept internship
invitations.'''),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Padding(
            padding: EdgeInsets.only(right: 55.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isChecked3 = !_isChecked3;
                    });
                  },
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      color: _isChecked3 ? Colors.blue : Colors.transparent,
                    ),
                    child: _isChecked3
                        ? Icon(
                            Icons.check,
                            size: 18.0,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                RefactorCheckboxText(
                    text1: "Looking for competitions",
                    text2: '''I am looking for a competition and i 
would like to accept competition 
invitations.'''),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Padding(
            padding: EdgeInsets.only(right: 55.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isChecked4 = !_isChecked4;
                    });
                  },
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      color: _isChecked4 ? Colors.blue : Colors.transparent,
                    ),
                    child: _isChecked4
                        ? Icon(
                            Icons.check,
                            size: 18.0,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                RefactorCheckboxText(
                    text1: "Looking for Tasks",
                    text2: '''I am looking for an employees and 
i would like to see employees applying 
for this position.'''),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Padding(
            padding: EdgeInsets.only(right: 55.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isChecked5 = !_isChecked5;
                    });
                  },
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      color: _isChecked5 ? Colors.blue : Colors.transparent,
                    ),
                    child: _isChecked5
                        ? Icon(
                            Icons.check,
                            size: 18.0,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                RefactorCheckboxText(
                    text1: "Looking for Courses & Roadmaps",
                    text2: '''I am looking for a courses and 
roadmaps and i would like to see 
employees applying for this position.'''),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class RefactorCheckboxText extends StatelessWidget {
  final String text1;
  final String text2;

  const RefactorCheckboxText({
    Key? key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.blue0C,
              ),
            ),
          ),
          Text(
            text2,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.gray83,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
