import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jobhunt/config/theme/Theme.dart';
import 'package:jobhunt/config/themes/Constants.dart';
import 'package:jobhunt/screens/applicant/presentation/view/filter/FilterPage.dart';
import 'package:jobhunt/screens/applicant/presentation/view/home/HomeScreen.dart';
import 'package:jobhunt/screens/applicant/presentation/view/settings/SettingScreen.dart';

class ApplicantMainPage extends StatefulWidget {
  const ApplicantMainPage({Key? key}) : super(key: key);

  @override
  State<ApplicantMainPage> createState() => _ApplicantMainPageState();
}

class _ApplicantMainPageState extends State<ApplicantMainPage> {
  int _selectedIndex = 0;

  List<Widget> applicantScreens = [
    HomeScreen(),
    // const FilterPage(),
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
            
            // GButton(
            //   icon: Icons.search,
            //   text: "Explore",
            //   backgroundColor: yellowClr.withOpacity(0.7),
            //   textStyle: TextStyle(fontSize: navTextSize),
            //   iconSize: navTextSize * 1.3,
            // ),


  
            GButton(
              key: const Key('settings'),
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
