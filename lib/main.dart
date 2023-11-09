import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/choose_screen/screen.dart';
import 'package:mediator/features/welcome_screens/first_screen.dart';
import 'package:mediator/features/welcome_screens/second_screen.dart';
import 'features/logo_screen/screen.dart';
import 'features/welcome_screens/third_screen.dart';

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
      home: ChooseScreen(),
    );
  }
}
