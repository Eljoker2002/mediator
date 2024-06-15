import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/saved_screen/screen1.dart';
import 'features/saved_screen/screen2.dart';
import 'features/saved_screen/screen3.dart';
import 'features/saved_screen/screen4.dart';
import 'features/saved_screen/screen5.dart';
import 'features/saved_screen/screen6.dart';
import 'features/saved_screen/screen7.dart';
import 'features/search_screen/search_screen.dart';
import 'features/settings/company/company_settings.dart';
import 'features/show_details/competition_details.dart';
import 'features/status/status.dart';
import 'features/verification_code_screen/new_password.dart';
import 'features/verification_code_screen/password1.dart';
import 'features/verification_code_screen/verification_code.dart';
import 'features/welcome_screens/first_screen.dart';
import 'features/welcome_screens/second_screen.dart';

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
      home:SecondScreen(),
    );
  }
}
