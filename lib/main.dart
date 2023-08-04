import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_uiapp/homepage.dart';
import 'package:netflix_uiapp/pages/login_page.dart';
import 'package:netflix_uiapp/pages/slidepage2.dart';
import 'package:netflix_uiapp/screen/first_screen.dart';
import 'package:netflix_uiapp/screen/last_screen.dart';

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
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: judyScreen(),
      home: HomePage(),
      //  home: SlidePage2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
