import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediator/core/navigator.dart';
import 'package:mediator/features/welcome_screens/first_screen.dart';

import '../post_screen/post_api.dart';

class LogoScreen extends StatefulWidget {
  LogoScreen({Key? key}) : super(key: key);
  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  Posts posts = Posts();
  @override
  void initState() {
    posts.GetPost(context);
    Timer(Duration(milliseconds: 1500), () {
      RouteUtils.push(
        context: context,
        screen: FirstScreen(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 50.h,
              width: 50.w,
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/logo.png",
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              "Mediator",
              style: GoogleFonts.calistoga(
                textStyle: TextStyle(
                  fontSize: 36,
                  color: AppColors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
