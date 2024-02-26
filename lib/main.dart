import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/controller.dart';
import 'package:mediator/features/complete_profile_screen/user_profile/screen3.dart';
import 'package:mediator/features/pay_screen/confirm_screen.dart';
import 'features/apply_screens/apply_job_screen.dart';
import 'features/character_screen/character.dart';
import 'features/chats_screen/screen1.dart';
import 'features/complete_profile_screen/organization_profile/organization_profile.dart';
import 'features/complete_profile_screen/user_profile/screen.dart';
import 'features/complete_profile_screen/user_profile/screen2.dart';
import 'features/enroll_courses/enroll_courses.dart';
import 'features/home_screen/screen.dart';
import 'features/log_in_screen/log_in.dart';
import 'features/notification_screen/screen.dart';
import 'features/pay_screen/card_screen.dart';
import 'features/sign_up_screen/sign_up.dart';
import 'features/verification_code_screen/verification_code.dart';
import 'features/welcome_screens/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (ctx, child) {
        ScreenUtil.init(
          ctx,
          designSize: Size(360, 640),
        );
        return child!;
      },
      debugShowCheckedModeBanner: false,
      home:EnrollScreen(),
    );
  }
}
