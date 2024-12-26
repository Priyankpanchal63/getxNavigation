import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getbavi/screeenone.dart';
import 'package:getbavi/screenTwo.dart';

import 'homescreen.dart';
import 'languages.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: Locale('en','US'),
      translations: Languages(),
      fallbackLocale: Locale('en','US'),
      theme: ThemeData(
        ),
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: ()=>HomeScreen()),
        GetPage(name: '/ScreenOne', page: ()=>ScreenOne()),
        GetPage(name: '/ScreenTwo', page: ()=>ScreenTwo())
      ],
    );
  }
}
