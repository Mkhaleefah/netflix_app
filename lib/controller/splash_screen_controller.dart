import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_uiapp/pages/login_page.dart';
import 'package:netflix_uiapp/pages/slidepage1.dart';
import 'package:netflix_uiapp/pages/slidepage2.dart';
import 'package:onboarding/onboarding.dart';

class SplashScreenController extends GetxController {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          //color: Colors.black87,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(9),
              // padding: const EdgeInsets.symmetric(
              //   horizontal: 45.0,
              //   vertical: 90.0,
              // ),
              child: Image.asset(
                'assets/images/slidepage1.png',
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Center(
                child: Text(
                  'Watch on\nany device',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.normal
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              // alignment: Alignment.centerLeft,
              child: Text(
                'Stream on Your phone,tablet,',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.normal),
                // textAlign: TextAlign.left,
              ),
            ),
            Text(
              'laptop,and TV without paying more..',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.normal),
              // textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            //  width: 0.0,
            color: background,
          ),
        ),
        child:
            //  SingleChildScrollView(
            //   controller: ScrollController(),
            //  child:
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              // padding: const EdgeInsets.symmetric(
              //   horizontal: 45.0,
              //   vertical: 90.0,
              // ),
              child: Image.asset(
                'assets/images/slidepage2.png',
                // color: pageImageColor
              ),
            ),
            Text(
              'Download and go',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 35),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              //alignment: Alignment.centerLeft,
              child: Text(
                'Save your data,watch offline on a\n      plane,train,or submarine...',
                style: pageInfoStyle,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    ),
    //  ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
          // border: Border.all(
          //   width: 0.0,
          //   color: background,
          // ),
        ),
        child:
            // SingleChildScrollView(
            //   controller: ScrollController(),
            //   child:
            Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              // padding: const EdgeInsets.symmetric(
              //   horizontal: 45.0,
              //   vertical: 90.0,
              // ),
              child: Image.asset(
                'assets/images/sildepage3 .png',
                //  color: pageImageColor
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: Align(
                // alignment: Alignment.centerLeft,
                child: Text(
                  'No Pesky contracts',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                  //  style: pageTitleStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
             // alignment: Alignment.centerLeft,
              child: Text(
                'Join today,cancel anytime',
                style: pageInfoStyle,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    ),
    // ),
  ];
  Material skipButton({void Function(int)? setIndex}) {
    return Material(
     // borderRadius: defaultSkipButtonBorderRadius,
      color: defaultSkipButtonColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 2;
            setIndex(2);
          }
        },
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Skip',
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }

  Material get signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {},
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Login',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(Duration(seconds: 5))
        .then((value) => Get.off(() => SlidePage2()));
    super.onInit();
    materialButton = skipButton();
    // materialButton = LoginPage();
    index = 0;
  }
}
