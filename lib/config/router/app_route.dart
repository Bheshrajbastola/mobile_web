import 'package:jobhunt/screens/applicant/presentation/view/category/CategoryScreen.dart';
import 'package:jobhunt/screens/applicant/presentation/view/events/EventsScreen.dart';
import 'package:jobhunt/screens/applicant/presentation/view/settings/SettingScreen.dart';
import 'package:jobhunt/screens/applicant/presentation/viewmodel/ApplicantMainScreen.dart';
import 'package:jobhunt/screens/auth/presentation/view/Login.dart';
import 'package:jobhunt/screens/auth/presentation/view/Register.dart';
import 'package:jobhunt/screens/employer/presentation/view/settings/basic_info_screen.dart';
import 'package:jobhunt/screens/employer/presentation/viewmodel/EmployerMainScreen.dart';
import 'package:jobhunt/screens/splash/presentation/view/splashScreen.dart';

class AppRoute{
  AppRoute._();
  static String splashRoute =  "/";
  static String loginRoute =  "/login";
  static String registerRoute =   "/register";
  static String homeRoute =  "/home";
  static String companyRoute =    "/homeEmployer";
  static String categoryRoute =   "/category";
  // static String filterRoute =   "/filter";
  static String eventsRoute =   "/todo";
  static String editBasicInfoRoute =  "/edit_basic";
  static String settingScreenRoute =  "/settings";



  static getApplicationRoute(){

    return{
      splashRoute :(context)=> const SplashScreen(),
      loginRoute : (context)=> const LoginScreen(),
      registerRoute :(context)=> const Register(),
      homeRoute: (context) => const ApplicantMainPage(),
      companyRoute :(context) => const EmployerMainPage(),
      categoryRoute :(context)=>  CategoryScreen(),
      // filterRoute : (context)=> const FilterPage(),
      eventsRoute :(context)=> const EventsScreen(),
      editBasicInfoRoute :(context)=> const EditBasicInfoScreen(),
      settingScreenRoute :(context)=> const SettingScreen(),
    };
  }
}