import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:mediator/features/home_screen/controller.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../widgets/custom_click.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = HomeController();

  @override
  void initState() {
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
                          Image(
                              image: AssetImage(
                            "assets/images/wave_hand.png",
                          )),
                        ],
                      ),
                      Text(
                        "Name",
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
                height: 30.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
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
