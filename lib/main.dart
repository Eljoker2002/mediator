import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/log_in_screen/log_in.dart';
import 'package:mediator/features/sign_up_screen/sign_up.dart';
import 'features/application_status/application_status.dart';
import 'features/apply_screens/apply_job_screen.dart';
import 'features/character_screen/character.dart';
import 'features/chats_screen/chat_details.dart';
import 'features/complete_profile_screen/organization_profile/organization_profile.dart';
import 'features/complete_profile_screen/user_profile/screen.dart';
import 'features/deactive_account/deactive_account.dart';
import 'features/enroll_courses/enroll_courses.dart';
import 'features/home_screen/screen.dart';
import 'features/job_view_screen/user_screen.dart';
import 'features/show_details/competition_details.dart';

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
      home: OrganizationProfile(),
    );
  }
}
