import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/skills_controller_api.dart';
import 'package:mediator/features/home_screen/controller.dart';
import 'package:mediator/features/job_view_screen/user_screen.dart';
import 'package:mediator/features/log_in_screen/login_api_forCompany.dart';
import 'package:mediator/features/welcome_screens/widgets/welcome_text.dart';
import 'package:mediator/widgets/app_button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../widgets/custom_click.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.name,required this.token}) : super(key: key);
  String name;
  String token;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = HomeController();
  SkillsControllerApi skillsControllerApi = SkillsControllerApi();

  @override
  void initState() {
    skillsControllerApi.getSkills(context);
    controller.selectedCategory = controller.home.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 14.w),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    width: 39.sp,
                    height: 39.sp,
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Good Morning",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.gray85,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          SvgPicture.asset(
                            "assets/images/twemoji_waving-hand.svg",
                          ),
                        ],
                      ),
                      Text(
                        widget.name,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Icon(PhosphorIcons.chatCircleDots(PhosphorIconsStyle.fill)),
                  SizedBox(
                    width: 2.w,
                  ),
                  Icon(Icons.notifications),
                ],
              ),
              SizedBox(height: 25.h),
              Container(
                height: 26.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.home.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final home = controller.home[index];
                    return CustomClick(
                      text: controller.home[index].title,
                      width: controller.home[index].width,
                      color: controller.home[index].color,
                      isSelected: controller.selectedCategory == home,
                      onTap: () => setState(() {
                        controller.selectedCategory = home;
                      }),
                    );
                  },
                ),
              ),
              if (controller.selectedCategory == controller.home[1])
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(top: 15.h),
                    children: [
                      Text(
                        "Recommendation",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 300.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: skillsControllerApi.data.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 25.w,
                                    right: 20.w,
                                    top: 15.h,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        skillsControllerApi.jobTitle[index],
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 2.h),
                                      Text(
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        skillsControllerApi.jobStatus[index],
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                          color: AppColors.black,
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2.h),
                                      Row(
                                        children: [
                                          Text(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            skillsControllerApi
                                                .companyList[index],
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                        skillsControllerApi
                                            .jobDescription[index],
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.gray4B,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp,
                                            )),
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {
                                              RouteUtils.push(
                                                context: context,
                                                screen: UserJob(
                                                  jobTitle: skillsControllerApi
                                                      .jobTitle[index],
                                                  jobStatus: skillsControllerApi
                                                      .jobStatus[index],
                                                  jobDescription:
                                                      skillsControllerApi
                                                              .jobDescription[
                                                          index],
                                                  companyList:
                                                      skillsControllerApi
                                                          .companyList[index],
                                                  jobAddress:
                                                      skillsControllerApi
                                                          .jobAddress[index],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 280.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.lGreen,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      // Use This
                      //
                      //
                      //
                      //
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 300.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: skillsControllerApi.data.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 25.w,
                                    right: 20.w,
                                    top: 15.h,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        skillsControllerApi.jobTitle[index],
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 2.h),
                                      Text(
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        skillsControllerApi.jobStatus[index],
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                          color: AppColors.black,
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2.h),
                                      Row(
                                        children: [
                                          Text(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            skillsControllerApi
                                                .companyList[index],
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        maxLines: 10,
                                        overflow: TextOverflow.ellipsis,
                                        skillsControllerApi
                                            .jobDescription[index],
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.gray4B,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp,
                                            )),
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {
                                              RouteUtils.push(
                                                context: context,
                                                screen: UserJob(
                                                  jobTitle: skillsControllerApi
                                                      .jobTitle[index],
                                                  jobStatus: skillsControllerApi
                                                      .jobStatus[index],
                                                  jobDescription:
                                                      skillsControllerApi
                                                              .jobDescription[
                                                          index],
                                                  companyList:
                                                      skillsControllerApi
                                                          .companyList[index],
                                                  jobAddress:
                                                      skillsControllerApi
                                                          .jobAddress[index],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 280.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.lGreen,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              if (controller.selectedCategory == controller.home[2])
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(top: 15.h),
                    children: [
                      Text(
                        "Recommendation",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Internship",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.lPink,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Internship",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.lPink,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Internship",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.bookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.lPink,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              if (controller.selectedCategory == controller.home[3])
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(top: 15.h),
                    children: [
                      Text(
                        "Recommendation",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Task",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.blueC9,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Task",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.blueC9,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Task",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.bookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.blueC9,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              if (controller.selectedCategory == controller.home[4])
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(top: 15.h),
                    children: [
                      Text(
                        "Recommendation",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Competition",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.greenC9,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Competition",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.greenC9,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Competition",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.bookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.greenC9,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              if (controller.selectedCategory == controller.home[5])
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(top: 15.h),
                    children: [
                      Text(
                        "Recommendation",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Course",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.blueC2,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Roadmap",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.solidBookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.blueC2,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blue0C,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6.h),
                        height: 135.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.w, right: 20.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Design Roadmap",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.poppins(
                                            color: AppColors.black,
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.sp,
                                            )),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Text(
                                            "SmartTech",
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.poppins(
                                                color: AppColors.gray83,
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13.sp,
                                                )),
                                          ),
                                          Spacer(),
                                          Icon(
                                            FontAwesomeIcons.bookmark,
                                            size: 15.sp,
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 4),
                                      Center(
                                        child: Container(
                                          width: 100.w,
                                          height: 20.h,
                                          child: AppButton(
                                            color: AppColors.pink,
                                            title: "View",
                                            fontSize: 12,
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                width: 200.w,
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: AppColors.blueC2,
                                  borderRadius: BorderRadius.circular(
                                    12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchContainer extends StatelessWidget {
  const SearchContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Colors.grey[400],
      ),
      height: 40.h,
      child: TextFormField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          prefixIcon: InkWell(
            onTap: () {},
            child: Icon(
              size: 23.sp,
              Icons.search,
              color: Color(0xFFA8A8A8),
            ),
          ),
          hintText: "Search job,company,internship,competition",
          hintStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 12.sp,
            ),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Icon(
              Icons.filter_list_outlined,
              color: Color(0xFF0B1075),
              size: 22.sp,
            ),
          ),
          filled: true,
          fillColor: Color(0xFFF5F5F5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF5F5F5),
            ),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF5F5F5),
            ),
            borderRadius: BorderRadius.circular(10.sp),
          ),
        ),
      ),
    );
  }
}
