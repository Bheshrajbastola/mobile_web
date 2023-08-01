import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jobhunt/config/themes/Constants.dart';
import 'package:jobhunt/screens/employer/presentation/view/home/Applicants/ApplicantTable.dart';
import 'package:jobhunt/screens/employer/presentation/view/home/HomeScreen.dart';
import 'package:jobhunt/screens/employer/presentation/view/settings/SettingScreen.dart';
import 'package:jobhunt/config/theme/Theme.dart';

class EmployerMainPage extends StatefulWidget {
  const EmployerMainPage({Key? key}) : super(key: key);

  @override
  State<EmployerMainPage> createState() => _EmployerMainPageState();
}

class _EmployerMainPageState extends State<EmployerMainPage> {
  int _selectedIndex = 0;

  List<Widget> applicantScreens = [
    HomeScreen(),
    const ApplicantsOverview(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: applicantScreens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GNav(
          tabBackgroundColor: Colors.grey.shade500,
          gap: 8,
          padding: const EdgeInsets.all(16),
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              backgroundColor: primaryClr.withOpacity(0.7),
              textStyle: TextStyle(fontSize: navTextSize),
              iconSize: navTextSize * 1.3,
            ),
            GButton(
              icon: Icons.search,
              text: "Applicants",
              backgroundColor: yellowClr.withOpacity(0.7),
              textStyle: TextStyle(fontSize: navTextSize),
              iconSize: navTextSize * 1.3,
            ),
         
            GButton(
              icon: Icons.settings,
              text: "Settings",
              backgroundColor: Colors.green.withOpacity(0.7),
              textStyle: TextStyle(fontSize: navTextSize),
              iconSize: navTextSize * 1.3,
            ),
          ],
        ),
      ),
    );
  }
}
