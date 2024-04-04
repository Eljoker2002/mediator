import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:mediator/core/app_colors.dart';

class ChatDetails extends StatelessWidget {
  ChatDetails({Key? key}) : super(key: key);
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
                    padding: EdgeInsets.zero,
                    reverse: true,
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      final isMe = index.isEven;
                      return Padding(
                        padding: EdgeInsets.only(bottom: 5.h),
                        child: Column(
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
                                  margin: EdgeInsets.only(top: 8.h),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.sp),
                                    color: isMe
                                        ? AppColors.blue30
                                        : AppColors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: AppColors.white,
                      height: 45.h,
                      width: 280.w,
                      child: TextFormField(
                        autofocus: true,
                        maxLines: null,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(width: 10.w),
                                InkWell(
                                  onTap: () {},
                                  child: Image(
                                    width: 20.w,
                                    height: 20.w,
                                    image: AssetImage(
                                      "assets/images/Vector.png",
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    size: 22.sp,
                                    Icons.camera_alt_outlined,
                                    color: AppColors.grayA8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          prefixIcon: InkWell(
                            onTap: () {},
                            child: Image(
                              width: 20.w,
                              height: 20.w,
                              image: AssetImage(
                                "assets/images/Emoji.png",
                              ),
                            ),
                          ),
                          fillColor: AppColors.white,
                          filled: true,
                          hintText: "Type a message...",
                          hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.grayA8,
                          )),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.white,
                            ),
                            borderRadius: BorderRadius.circular(
                              8.sp,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.white,
                            ),
                            borderRadius: BorderRadius.circular(
                              8.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.mic,
                        color: AppColors.white,
                        size: 25.sp,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.blue3D,
                        borderRadius: BorderRadius.circular(
                          30.sp,
                        ),
                      ),
                      width: 50.w,
                      height: 50.w,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
              ],
            ),
          )
        ],
      ),
    );
  }
}
