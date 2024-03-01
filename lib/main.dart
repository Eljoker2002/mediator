import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/saved_screen/screen3.dart';
import 'features/saved_screen/screen5.dart';
import 'features/saved_screen/screen6.dart';
import 'features/saved_screen/screen7.dart';

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
      home:MyCV(),
    );
  }
}
