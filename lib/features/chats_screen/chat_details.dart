import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:mediator/core/app_colors.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            height: 95.h,
            width: double.infinity,
            image: AssetImage("assets/images/chats.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h, right: 10.w, left: 10.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left,
                      size: 30.sp,
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      "User Name",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Icon(
                      CupertinoIcons.phone,
                    ),
                    SizedBox(width: 7.w),
                    Icon(
                      CupertinoIcons.video_camera,
                      size: 30.sp,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      final isMe = index.isEven;
                      return Column(
                        crossAxisAlignment: isMe
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          UnconstrainedBox(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: 10,
                                maxWidth: 300,
                              ),
                              child: Container(
                                margin: EdgeInsets.only(top: 10.h),
                                padding: EdgeInsets.all(10.sp),
                                child: Column(
                                  children: [
                                    Text(
                                      "Message" * (index + 1),
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontSize: 12.sp,
                                          color: isMe
                                              ? AppColors.white
                                              : AppColors.black,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      child: Text(
                                        "10:00",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 8.sp,
                                            color: isMe
                                                ? AppColors.white
                                                : AppColors.grayB8,
                                          ),
                                        ),
                                      ),
                                      alignment: Alignment.centerRight,
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.sp),
                                  color:
                                      isMe ? AppColors.blue30 : AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          )
        ],
      ),
    );
  }
}
