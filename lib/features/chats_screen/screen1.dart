import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/chats_screen/controller.dart';
import 'package:mediator/features/chats_screen/text(l+s).dart';
import 'package:mediator/features/notification_screen/refactor.dart';
import '../../core/app_colors.dart';
import 'call_item.dart';
import 'chat_details.dart';
import 'chat_item.dart';
import 'first_community.dart';
import 'new_community.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [];
  final ChatsController controller = ChatsController();

  @override
  void initState() {
    controller.selectedChats = controller.chats.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteF6,
      body: Stack(
        children: [
          Image(
            height: 133.h,
            width: double.infinity,
            image: AssetImage("assets/images/chats.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h, right: 10.w, left: 10.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left,
                      size: 30.sp,
                    ),
                    Spacer(),
                    Text(
                      "Message",
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
                SizedBox(height: 15.h),
                Center(
                  child: Container(
                    height: 34.h,
                    width: 318.w,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.chats.length,
                      itemBuilder: (context, index) {
                        final chats = controller.chats[index];
                        return ChooseFromTop(
                          onTap: () {
                            setState(() {
                              controller.selectedChats = chats;
                            });
                          },
                          text: chats.text,
                          width: 106.w,
                          fontSize: 15.sp,
                          isSelected: controller.selectedChats == chats,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                if (controller.selectedChats == controller.chats[0])
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => InkWell(
                        child: chatItem(),
                        onTap: () {
                          RouteUtils.push(
                              context: context, screen: ChatDetails());
                        },
                        highlightColor: AppColors.whiteF6,
                        splashColor: AppColors.whiteF6,
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 5.h,
                      ),
                      itemCount: 10,
                    ),
                  ),
                if (controller.selectedChats == controller.chats[1])
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                            horizontal: 25.w,
                          ),
                          child: InkWell(
                            onTap: () {
                              RouteUtils.push(
                                  context: context, screen: NewCommunity());
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 25.w),
                              height: 48.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.grayD6),
                                borderRadius: BorderRadius.circular(12.sp),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    width: 20.sp,
                                    height: 20.sp,
                                    "assets/images/Vector.svg",
                                  ),
                                  SizedBox(width: 15.w),
                                  LText(
                                    text: "New Communities",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: LText(
                              text: 'Your Communities',
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Expanded(
                          child: ListView.separated(
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) => firstCommunity(),
                            separatorBuilder: (context, index) => SizedBox(
                              height: 12.h,
                            ),
                            itemCount: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                if (controller.selectedChats == controller.chats[2])
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => callItem(),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 12.h,
                      ),
                      itemCount: 10,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
