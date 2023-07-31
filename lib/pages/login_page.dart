import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_uiapp/controller/login_controller.dart';
import 'package:netflix_uiapp/screen/first_screen.dart';
// import 'package:netflix_uiapp/controller/signup_controller.dart';
// import 'package:netflix_uiapp/pages/signup.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        //  iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Help',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.normal,
                fontSize: 15,
              ),
            ),
          )
        ],
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            'NETFLIX',
            style: GoogleFonts.lato(
              color: Colors.redAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: loginController.email,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Email or Phone number',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: const Color.fromARGB(255, 130, 127, 127),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                // decoration: InputDecoration(
                //   labelText: 'Email or Password',
                //   border: OutlineInputBorder(),
                // ),
              ),
            ),
            SizedBox(height: 16),
            Obx(() {
              return TextField(
                onChanged: loginController.password,
                obscureText: !loginController.showPassword.value,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 130, 127, 127),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                  suffixIcon: IconButton(
                    icon: loginController.showPassword.value
                        ? Icon(Icons.visibility)
                        : Text(
                            'SHOW',
                            style: TextStyle(color: Colors.white),
                          ),
                    // : Icon(Icons.visibility_off),
                    onPressed: loginController.toggleShowPassword,
                  ),
                ),
              );
            }),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FirstScreen(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 50),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                    backgroundColor: Colors.red,
                    elevation: 0.0),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'Recover Password,',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text:
                        'Sign in is protected by Google reCAPTCHA to\n    ensure youre not a bot..',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: 'Learn more.',
                    style: GoogleFonts.quicksand(
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // body: Padding(
  //   padding: const EdgeInsets.all(16.0),
  //   child: Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     children: [
  //       TextField(
  //         onChanged: loginController.email,
  //         style: TextStyle(color: Colors.white),
  //         decoration: InputDecoration(
  //             border: OutlineInputBorder(),
  //             labelText: 'Email or phone number'),
  //       ),
  //       SizedBox(height: 16),
  //       TextField(
  //         onChanged: loginController.password,
  //         style: TextStyle(color: Colors.white),
  //         obscureText: true,
  //         decoration: InputDecoration(
  //             border: OutlineInputBorder(), labelText: 'Password'),
  //       ),
  //       SizedBox(height: 16),
  //       ElevatedButton(
  //         style: ElevatedButton.styleFrom(
  //             shape: BeveledRectangleBorder(),
  //             backgroundColor: Colors.red,
  //             elevation: 0),
  //         //  onPressed: SignUpController(SignUpPage),
  //         onPressed: loginController.login,
  //         child: Text(
  //           'Sign In',
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontSize: 20,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  // ),
  // );
}
//}

