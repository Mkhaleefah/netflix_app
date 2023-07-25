import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_uiapp/controller/splash_screen_controller.dart';
import 'package:netflix_uiapp/pages/slidepage1.dart';

class HomePage extends StatelessWidget {
  SplashScreenController screenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text(
                'NETFLIX',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
