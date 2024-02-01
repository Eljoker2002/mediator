import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/notification_screen/controller.dart';
import 'package:mediator/features/notification_screen/refactor.dart';
import 'package:mediator/features/notification_screen/refactor_app.dart';

import '../../core/app_colors.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final NotificationController controller = NotificationController();

  @override
  void initState() {
    controller.selectedNotification = controller.notification.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Padding(
        padding: EdgeInsets.only(top: 45.h, left: 18.w, right: 18.w),
        child: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 24.sp,
                    height: 24.sp,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15.sp),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.grayB8,
                          spreadRadius: 1.sp,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 22.sp,
                      color: AppColors.blue0C,
                    ),
                  ),
                ),
                SizedBox(width: 23.w),
                Text(
                  "Notification",
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
            SizedBox(height: 18.h),
            SizedBox(
              height: 34.h,
              child: ListView.builder(
                itemCount: controller.notification.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final notification = controller.notification[index];
                  return ChooseFromTop(
                    onTap: () {
                      setState(() {
                        controller.selectedNotification = notification;
                      });
                    },
                    text: controller.notification[index].text,
                    isSelected: controller.selectedNotification == notification,
                    width: 162.w,
                    fontSize: 15.sp,
                  );
                },
              ),
            ),
            SizedBox(height: 10.h),
            if (controller.selectedNotification == controller.notification[0])
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: (context, index) => GeneralNotification(),
                ),
              ),
            if (controller.selectedNotification == controller.notification[1])
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return RefactorApp();
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class GeneralNotification extends StatelessWidget {
  const GeneralNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Icon(
                Icons.error,
                color: AppColors.white,
              ),
              width: 34.sp,
              height: 34.sp,
              decoration: BoxDecoration(
                color: AppColors.blue30,
                borderRadius: BorderRadius.circular(20.sp),
              ),
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NotificationText(
                  text: 'Security Updates',
                ),
                NotificationDate(
                  date: '30 Nov 2023 | 20:49 PM',
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Divider(
          color: AppColors.gray8F,
        ),
      ],
    );
  }
}

class NotificationText extends StatelessWidget {
  final String text;

  const NotificationText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class NotificationDate extends StatelessWidget {
  final String date;

  const NotificationDate({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12.sp,
          color: AppColors.gray83,
        ),
      ),
    );
  }
}
