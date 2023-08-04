import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_uiapp/pages/login_page.dart';
import 'package:netflix_uiapp/pages/slidepage1.dart';
import 'package:netflix_uiapp/pages/slidepage2.dart';
import 'package:netflix_uiapp/screen/last_screen.dart';
import 'package:onboarding/onboarding.dart';

class SplashScreenController extends GetxController {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(9),
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
            ),
          ],
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Image.asset(
                'assets/images/slidepage2.png',
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

    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Image.asset(
                'assets/images/sildepage3 .png',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: Align(
                child: Text(
                  'No Pesky contracts',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
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

    // PageModel(
    //   widget: Stack(
    //     children: [
    //       Image.asset(
    //         'assets/images/slidepage5.jpg',

    //         fit: BoxFit.cover,
    //       ),
    //       Positioned(
    //         bottom:
    //             16, // Adjust the position of the text from the bottom as needed.
    //         left:
    //             16, // Adjust the position of the text from the left as needed.
    //         child: Text(
    //           'How do i watch??',
    //           style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 40,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
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

class LoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Get.off(() => LastScreen());
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircularProgressIndicator(
          //  strokeWidth: 5,
          color: Colors.red,
        ),
      ],
    );
  }
}
