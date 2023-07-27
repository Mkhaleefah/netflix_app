import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_uiapp/controller/splash_screen_controller.dart';
import 'package:onboarding/onboarding.dart';

class SlidePage2 extends StatelessWidget {
  SplashScreenController screenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'NETFLIX',
            style: GoogleFonts.lato(
              color: Colors.redAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              // fontStyle: FontStyle.normal,
            ),
          ),
          actions: [
            Row(
              children: [
                Text(
                  'Privacy',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Help',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        body: Onboarding(
          pages: screenController.onboardingPagesList,
          onPageChange: (int pageIndex) {
            screenController.index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: background,
                border: Border.all(
                  width: 0.0,
                  color: background,
                ),
              ),
              child: ColoredBox(
                //  color: Colors.red,
                color: background,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomIndicator(
                            netDragPercent: dragDistance,
                            pagesLength: pagesLength,
                            indicator: Indicator(
                              indicatorDesign: IndicatorDesign.polygon(
                                polygonDesign: PolygonDesign(
                                  polygon: DesignType.polygon_circle,
                                ),
                              ),
                            )

                            // indicator: Indicator(
                            //   indicatorDesign: IndicatorDesign.line(
                            //     lineDesign: LineDesign(
                            //       lineType: DesignType.line_uniform,
                            //     ),
                            //   ),
                            // ),
                            ),
                        screenController.index == pagesLength - 1
                            ? screenController.signupButton
                            : screenController.skipButton(setIndex: setIndex),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(300, 50),
                            shape: BeveledRectangleBorder(),
                            backgroundColor: Colors.green,
                            elevation: 0.0),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
