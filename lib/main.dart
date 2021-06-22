import 'package:app_dp/app/modules/splash/splash_bindings.dart';
import 'package:app_dp/app/modules/splash/splash_page.dart';
import 'package:app_dp/app/routes/app_pages.dart';
import 'package:app_dp/app/utils/dependecy_injection.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  DependecyInjection.init();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}
