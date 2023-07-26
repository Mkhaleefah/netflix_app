import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_uiapp/pages/login_page.dart';
import 'package:onboarding/onboarding.dart';

class SlideScreenController extends GetxController {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          // border: Border.all(
          //   width: 0.0,
          //   color: background,
          // ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45.0,
                vertical: 90.0,
              ),
              child: Image.asset(
                'assets/images/slidepage1.png',
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Watch on ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'any device ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Stream on Your phone,tablet,',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.normal),
                  // textAlign: TextAlign.left,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'laptop,and TV without paying more.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.normal),
                  // textAlign: TextAlign.left,
                ),
              ),
            ),

            // ElevatedButton(onPressed: (){},
            // child: Text('sign in'))
          ],
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/twitter.png',
                    color: pageImageColor),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'CHANGE AND RISE',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Give others access to any file or folders you choose',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/sildepage3.png',
                    color: pageImageColor),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'EASY ACCESS',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Reach your files anytime from any devices anywhere',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(Duration(seconds: 20))
        .then((value) => Get.off(() => LoginPage()));
    super.onInit();
  }
}
