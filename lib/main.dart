import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/features/notification_screen/screen2.dart';
import 'features/notification_screen/screen3.dart';

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
      home:Notification2(),
    );
  }
}
