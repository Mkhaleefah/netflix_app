import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Netflix',
            style: GoogleFonts.oswald(
                color: Colors.blue, fontWeight: FontWeight.bold, height: 10)),
        actions: [
          Text(
            'Help',
            style: GoogleFonts.lato(color: Colors.white, fontSize: 16),
          )
        ],
        // leading: Text(
        //   'Help',
        //   style: GoogleFonts.lato(color: Colors.black),
        // ),
      ),
    );
  }
}






// import 'dart:developer';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:my_english_app/screens/signupscreen.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   // final _fullnameController = TextEditingController();
//   var _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   var _formKey = GlobalKey<FormState>();

//   static Future<User?> loginUsingEmailPassword(
//       {required String email,
//       required String password,
//       required BuildContext context}) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;

//     try {
//       final credential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: email, password: password);
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         print('Wrong password provided for that user.');
//       }
//     }
//     return user;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   height: 200,
//                   width: 200,
//                   child: Image.network(
//                       'https://raw.githubusercontent.com/DhairyeKataria/Plant-App/main/images/plant2.png'),
//                 ),
//                 const Center(
//                   child: Text(
//                     'Welcome Back',
//                     style: TextStyle(
//                         color: Color(0xff1A4F2F),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 35),
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   'Login To Your Account ',
//                   style: TextStyle(
//                       color: Color(0xffA8A8A8),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 30, top: 90),
//                   child: TextFormField(
//                     controller: _emailController,
//                     decoration: InputDecoration(
//                       hintText: 'Email',
//                       filled: true,
//                       fillColor: Color(0xffE0E9E4),
//                       hintStyle: TextStyle(
//                           color: Color(0xff1A4F2F),
//                           fontWeight: FontWeight.bold),
//                       prefixIcon: Icon(
//                         Icons.person,
//                         color: Color(0xff1A4F2F),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(18),
//                       ),
//                     ),
//                     validator: (item) {
//                       return item!.contains("@") ? null : "Enter valid Email";
//                     },
//                     onChanged: (item) {},
//                   ),
//                 ),
//                 TextFormField(
//                   controller: _passwordController,
//                   decoration: InputDecoration(
//                     //  labelText: 'password',
//                     hintText: 'Password',
//                     filled: true,
//                     fillColor: Color(0xffE0E9E4),
//                     hintStyle: TextStyle(
//                         color: Color(0xff1A4F2F), fontWeight: FontWeight.bold),
//                     prefixIcon: Icon(
//                       Icons.lock,
//                       color: Color(0xff1A4F2F),
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your password address';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       'Remember Me',
//                       style: TextStyle(
//                           color: Color(0xffA8A8A8),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15),
//                     ),
//                     //   Icon(Icons.check_box_sharp),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       'Forgot Password ?',
//                       style: TextStyle(
//                           color: Color(0xff1A4F2F),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Container(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                         onPressed: () {
//                           logIn();
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xff1A4F2F),
//                         ),
//                         child: const Text(
//                           'LogIn',
//                           style: TextStyle(color: Colors.white),
//                         ))),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       'Dont have an account?',
//                       style: TextStyle(
//                           color: Color(0xffA3A3A3),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => SignupScreen(),
//                             ));
//                       },
//                       child: Text(
//                         'Sign up',
//                         style: TextStyle(
//                             color: Color(0xff1A4F2F),
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15),
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void logIn() {
//     if (_formKey.currentState!.validate()) {
//       // Perform signup logic
//       // For example:
//       FirebaseAuth.instance
//           .signInWithEmailAndPassword(
//               email: _emailController.text, password: _passwordController.text)
//           .then((userCredential) {
//         // Signup successful
//         log(userCredential.user!.uid);
//       }).catchError((error) {
//         // Handle signup error
//         log("$error");
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//             content: Text(
//               error.toString(),
//             ),
//             duration: Duration(seconds: 5)));
//       });
//     }
//   }
// }
