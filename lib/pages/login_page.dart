import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_uiapp/controller/login_controller.dart';
// import 'package:netflix_uiapp/controller/signup_controller.dart';
// import 'package:netflix_uiapp/pages/signup.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
          Text(
            'Menu',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Netflix',
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.normal,
              fontSize: 20,
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
                labelText: 'Email or Password',
                border: OutlineInputBorder(),
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
                  border: OutlineInputBorder(),
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
              style: ElevatedButton.styleFrom(shadowColor: Colors.red),
              onPressed: loginController.login,
              child: Text('Sign In'),
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

