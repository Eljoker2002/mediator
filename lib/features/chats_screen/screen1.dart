import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/chats_screen/controller.dart';
import 'package:mediator/features/home_screen/screen.dart';
import 'package:mediator/features/notification_screen/refactor.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/app_colors.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int currentIndex = 0;
  final List<Widget> screens = [

  ];
  final ChatsController controller = ChatsController();

  @override
  void initState() {
    controller.selectedChats = controller.chats.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColors.grayDE,
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
                SizedBox(height: 14.h),
                Center(
                  child: Container(
                    height: 34.h,
                    width: 318.w,
                    child: ListView.builder(
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
                      itemBuilder: (context, index) => chatItem1(),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 12.h,
                      ),
                      itemCount: 10,
                    ),
                  ),

                if (controller.selectedChats == controller.chats[1])
               Column(
                 children: [
                   SizedBox(height: 20.h),
                   Padding(
                     padding: EdgeInsets.only(right: 18.w,left: 10.w),
                     child: Container(
                       child: Padding(
                         padding:EdgeInsets.only(top: 12.h,left:45.w),
                         child: Text("New Community",style: GoogleFonts.poppins(
                           textStyle: TextStyle(
                             color: AppColors.black,
                             fontSize: 14.sp,
                             fontWeight: FontWeight.w600,
                           ),
                         ),),
                       ),
                       width: 315.w,
                       height: 46.h,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         border: Border.all(color: AppColors.grayD6),
                       ),
                     ),
                   ),
                   SizedBox(height: 16.h),
                   Padding(
                     padding: EdgeInsets.only(right: 18.w,left: 7.w),
                     child: Container(
                       width: 310.w,
                       height: 320.h,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         border: Border.all(color: AppColors.grayD6),
                       ),
                     ),
                   )
                 ],
               ),
                if (controller.selectedChats == controller.chats[2])
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => chatItem2(),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.grayDE,
        unselectedItemColor: AppColors.grayB8,
        selectedItemColor: AppColors.black,
        currentIndex: currentIndex,
        onTap: (index){
          print(index);
          setState(() {
            currentIndex=index;
          });
        },
        items: const[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.house_fill),label:"Home" ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.multiply_square_fill),label: "saved"),
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.bag_fill),label: "Application"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),label: "Message"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_solid),label: "Profile"),

        ],
      ),
    );
  }
}

Widget chatItem1() {
  return Column(
    children: [
      RefactorChatItem(text2: "okay, Do you have a deal?"),
      SizedBox(height: 10.h),
      Divider(
        height: 1.h,
        color: AppColors.grayA8,
        thickness: .5.h,
      ),
    ],
  );
}
Widget chatItem2() {
  return Column(
    children: [
      RefactorChatItem(text2: "Incoming"),
      SizedBox(height: 10.h),
      Divider(
        height: 1.h,
        color: AppColors.grayA8,
        thickness: .5.h,
      ),
    ],
  );
}

class RefactorChatItem extends StatelessWidget {
  RefactorChatItem({
    super.key,
    this.text2,
    this.icon,
});
  final String? text2;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
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
          SizedBox(width: 10.89.w),
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
                  SizedBox(width: 170.29.w),
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
                  //Icon(icon),
                  Text(
                    text2!,
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

    );
  }
}
