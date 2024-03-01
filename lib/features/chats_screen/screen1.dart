import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/chats_screen/controller.dart';
import 'package:mediator/features/chats_screen/text(l+s).dart';
import 'package:mediator/features/notification_screen/refactor.dart';
import 'package:mediator/features/welcome_screens/widgets/welcome_text.dart';
import '../../core/app_colors.dart';

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
                      itemBuilder: (context, index) => chatItem(),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 12.h,
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

Widget chatItem() {
  return Column(
    children: [
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 28.sp,
                child: Image.asset(
                  "assets/images/person-circle.png",
                  fit: BoxFit.cover,
                  width: 67.76.w,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 1.h, end: 1.w),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 6.sp,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 1.5.w,
                        bottom: 4.h,
                        left: .8.w,
                        top: .5.h,
                      ),
                      child: CircleAvatar(
                        radius: 5.sp,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "User Name",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 160.w),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "12:30",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: AppColors.grayA4,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "okay, Do you have a deal?",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.gray83,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      SizedBox(height: 5.h),
      Divider(
        height: 1.h,
        color: AppColors.grayA8,
        thickness: .5.h,
      ),
    ],
  );
}

Widget callItem() {
  return Column(
    children: [
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 28.sp,
                child: Image.asset(
                  "assets/images/person-circle.png",
                  fit: BoxFit.cover,
                  width: 67.76.w,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 1.h, end: 1.w),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 6.sp,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 1.5.w,
                        bottom: 4.h,
                        left: .8.w,
                        top: .5.h,
                      ),
                      child: CircleAvatar(
                        radius: 5.sp,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "User Name",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: AppColors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 160.w),
              Row(
                children: [
                  Text(
                    "Incoming",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColors.gray83,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      SizedBox(height: 5.h),
      Divider(
        height: 1.h,
        color: AppColors.grayA8,
        thickness: 1.sp,
      ),
    ],
  );
}

Widget firstCommunity() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        margin: EdgeInsets.only(left: 15.w, right: 15.w),
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.sp),
          color: AppColors.white,
        ),
        child: Row(
          children: [
            Spacer(),
            Image.asset(
              "assets/images/ion_person-circle (1).png",
              width: 60.sp,
              height: 60.sp,
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                LText(
                  text: "UI/UX Designers",
                  fontSize: 13,
                ),
                SizedBox(height: 3.h),
                SText(
                  text: "okay, Do you have a deal?",
                  fontSize: 10,
                )
              ],
            ),
            Spacer(flex: 2),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SText(
                  text: "12:30",
                  fontSize: 10,
                ),
                SizedBox(height: 3.h),
                Container(
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  width: 20.sp,
                  height: 20.sp,
                  decoration: BoxDecoration(
                    color: AppColors.blue30,
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                )
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    ],
  );
}

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

Widget oneCommunity() {
  return Container(
    margin: EdgeInsets.only(left: 15.w),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/person-circle.png",
          scale: 1.2,
        ),
        SizedBox(height: 5.h),
        LText(
          text: "UI/UX Designers",
          fontSize: 11,
        ),
        SizedBox(height: 2.h),
        SText(
          text: "1400 members",
          fontSize: 10,
        ),
      ],
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.sp),
      color: AppColors.white,
    ),
    width: 140.w,
  );
}
