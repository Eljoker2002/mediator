import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/features/home_screen/controller.dart';
import '../../widgets/custom_click.dart';

class HomeScreen extends StatelessWidget {
  HomeController controller = HomeController();

  HomeScreen({Key? key}) : super(key: key);

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
                        borderRadius: BorderRadius.circular(20.sp)),
                    width: 39.sp,
                    height: 39.sp,
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Color(0xFFA8A8A8),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        "Name",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.notification_important,
                    size: 28.sp,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: Colors.grey[400],
                ),
                height: 50.h,
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
              ),
              SizedBox(height: 16.h),
              Container(
                height: 40.h,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: controller.home.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CustomClick(
                        text: controller.home[index].title,
                        width: controller.home[index].width,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
