import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jobhunt/config/router/app_route.dart';
import 'package:jobhunt/config/theme/Theme.dart';
import 'package:jobhunt/core/services/theme_services.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      darkTheme: Themes.dark,
      theme: Themes.light,
      themeMode: ThemeServices().theme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute. splashRoute,
      routes: AppRoute.getApplicationRoute(),

    );
  }
}