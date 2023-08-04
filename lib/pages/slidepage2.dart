import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_uiapp/controller/splash_screen_controller.dart';
import 'package:netflix_uiapp/pages/login_page.dart';
import 'package:onboarding/onboarding.dart';

class SlidePage2 extends StatelessWidget {
  SplashScreenController screenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: Column(
        children: [
          Expanded(
            child: Onboarding(
              pages: screenController.onboardingPagesList,
              onPageChange: (int pageIndex) {
                screenController.index = pageIndex;
              },
              startPageIndex: 0,
              footerBuilder: (context, dragDistance, pagesLength, setIndex) {
                return CustomIndicator(
                  netDragPercent: dragDistance,
                  pagesLength: pagesLength,
                  indicator: Indicator(
                    // activeIndicator: ActiveIndicator(
                    //   color: Colors.redAccent,
                    // ),
                    // closedIndicator: ClosedIndicator(color: Colors.white),
                    indicatorDesign: IndicatorDesign.polygon(
                      polygonDesign: PolygonDesign(
                        polygon: DesignType.polygon_circle,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.to(()=>LoginPage());
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => LoginPage(),
              //  )
               // );
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                  shape: BeveledRectangleBorder(),
                  backgroundColor: Colors.red,
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
    );
  }
}
