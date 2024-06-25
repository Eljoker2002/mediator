import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../core/app_colors.dart';
import '../features/application_status/application2.dart';
import '../features/application_status/application_status.dart';
import '../features/complete_profile_screen/user_profile/screen2.dart';
import '../features/home_screen/screen.dart';
import '../features/post_screen/post_screen.dart';
import '../features/saved_screen/saved_screen1.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  List<Widget> screen=[
    HomeScreen(),
    SavedScreen(),
    PostScreen(name: '', website: '', about: '',),
    ApplicationScreen2(),
    UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screen[selectedIndex],
      bottomNavigationBar: buildCurvedNavigationBar(),
    );
  }

  Widget buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor:AppColors.whiteF6 ,
      animationDuration: Duration(milliseconds: 300),
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        Icon(Icons.home),
        Icon(Icons.save),
        Icon(Icons.add_circle_outlined),
        Icon(PhosphorIconsBold.briefcase),
        Icon(Icons.person),
      ],
    );
  }
}