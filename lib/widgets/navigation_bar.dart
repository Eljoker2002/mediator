import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mediator/features/chats_screen/screen1.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../core/app_colors.dart';
import '../features/application_status/apllication_organization.dart';
import '../features/application_status/application2.dart';
import '../features/application_status/application_status.dart';
import '../features/complete_profile_screen/organization_profile/show_company_profile.dart';
import '../features/complete_profile_screen/user_profile/screen2.dart';
import '../features/home_screen/screen.dart';
import '../features/post_screen/post_screen.dart';
import '../features/saved_screen/saved_screen1.dart';

class MyCompanyPage extends StatefulWidget {
  @override
  _MyCompanyPageState createState() => _MyCompanyPageState();
}

class _MyCompanyPageState extends State<MyCompanyPage> {
  int selectedIndex = 0;
  List<Widget> screen = [
    PostScreen(name: '', website: '', about: ''),
    SavedScreen(),
    ApplicationScreen2(),
    UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: buildCurvedNavigationBar(),
    );
  }

  Widget buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor: AppColors.whiteF6,
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

class MyUserPage extends StatefulWidget {
  const MyUserPage({super.key});

  @override
  State<MyUserPage> createState() => _MyUserPageState();
}

class _MyUserPageState extends State<MyUserPage> {
  int selectedIndex2 = 0;
  List<Widget> screen2 = [
    HomeScreen(
      name: '',
    ),
    OrganizationApplication(),
    PostScreen(
      name: '',
      website: '',
      about: '',
    ),
    ChatsScreen(),
    CompanyProfileScreen(
      name: '',
      website: '',
      about: '',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen2[selectedIndex2],
      bottomNavigationBar: buildCurvedNavigationBar2(),
    );
  }

  Widget buildCurvedNavigationBar2() {
    return CurvedNavigationBar(
      backgroundColor: AppColors.whiteF6,
      animationDuration: Duration(milliseconds: 300),
      onTap: (index) {
        setState(() {
          selectedIndex2 = index;
        });
      },
      items: [
        Icon(Icons.home),
        Icon(PhosphorIconsBold.briefcase),
        Icon(Icons.add_circle_outlined),
        Icon(PhosphorIcons.chatCircleDots(PhosphorIconsStyle.fill)),
        Icon(Icons.person),
      ],
    );
  }
}
