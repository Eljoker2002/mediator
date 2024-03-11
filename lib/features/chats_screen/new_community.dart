import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/chats_screen/text(l+s).dart';
import '../../core/app_colors.dart';
import '../../core/navigator.dart';
import 'one_community.dart';

class NewCommunity extends StatelessWidget {
  const NewCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding: EdgeInsets.only(top: 45.h, right: 10.w, left: 10.w),
        child: ListView(
          padding: EdgeInsets.only(bottom: 20.h),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    RouteUtils.pop(context: context);
                  },
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    size: 30.sp,
                  ),
                ),
                Spacer(),
                Text(
                  "Community",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 24.sp,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 20.h),
              child: LText(text: "For you"),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 110.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return oneCommunity();
                },
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 110.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return oneCommunity();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 15.h, bottom: 10.h),
              child: LText(text: "All"),
            ),
            Container(
              height: 110.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return oneCommunity();
                },
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 110.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return oneCommunity();
                },
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 110.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return oneCommunity();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
