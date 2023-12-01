import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/complete_profile_screen/organization_profile/organization_profile.dart';
import 'features/complete_profile_screen/user_profile/screen.dart';
import 'features/sign_up_screen/sign_up.dart';


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
      home: CompleteUserProfileScreen(),
    );
  }
}
