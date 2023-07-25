// import 'dart:developer';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'loginscreen.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   // final _formKeyController = TextEditingController();
//   final _fullnameController = TextEditingController();
//   var _emailController = TextEditingController();
//   var _passwordController = TextEditingController();
//   final _confirmController = TextEditingController();
//   var _formKey = GlobalKey<FormState>();

//   bool isLoading = false;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Scaffold(
//         // appBar: AppBar(
//         //   title: const Center(
//         //     child: Text('Sign_up'),
//         //   ),
//         // ),
//         body: isLoading
//             ? CircularProgressIndicator()
//             : Center(
//                 child: SingleChildScrollView(
//                   child: Form(
//                     key: _formKey,
//                     child: Container(
//                       margin: EdgeInsets.all(16),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [
//                               Text('Register',
//                                   style: GoogleFonts.poppins(
//                                     fontSize: 30,
//                                     fontWeight: FontWeight.w600,
//                                     color: Color(0xff1A4F2F),
//                                   )),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text('Create a new account',
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 15, color: Colors.grey[600])),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               TextFormField(
//                                 controller: _fullnameController,
//                                 decoration: InputDecoration(
//                                   //  labelText: 'Full Name',
//                                   hintText: 'Full Name',
//                                   filled: true,
//                                   fillColor: Color(0xffE0E9E4),
//                                   hintStyle: TextStyle(
//                                       color: Color(0xff1A4F2F),
//                                       fontWeight: FontWeight.bold),
//                                   prefixIcon: Icon(
//                                     Icons.person,
//                                     color: Color(0xff1A4F2F),
//                                   ),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(18),
//                                   ),
//                                 ),
//                                 validator: (value) {
//                                   if (value!.isEmpty) {
//                                     return 'Please enter your Full Name';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                             ],
//                           ),
//                           //  ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           TextFormField(
//                             controller: _emailController,
//                             validator: (item) {
//                               return item!.contains("@")
//                                   ? null
//                                   : "Enter valid Email";
//                             },
//                             onChanged: (item) {},
//                             decoration: InputDecoration(
//                               //  labelText: 'Email',
//                               hintText: 'Email',
//                               filled: true,

//                               fillColor: Color(0xffE0E9E4),
//                               hintStyle: const TextStyle(
//                                   color: Color(0xff1A4F2F),
//                                   fontWeight: FontWeight.bold),
//                               prefixIcon: Icon(
//                                 Icons.email,
//                                 color: Color(0xff1A4F2F),
//                               ),

//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(18),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           TextFormField(
//                             controller: _passwordController,
//                             decoration: InputDecoration(
//                               //  labelText: 'password',
//                               hintText: 'Password',
//                               filled: true,
//                               fillColor: Color(0xffE0E9E4),
//                               hintStyle: TextStyle(
//                                   color: Color(0xff1A4F2F),
//                                   fontWeight: FontWeight.bold),
//                               prefixIcon: Icon(
//                                 Icons.lock,
//                                 color: Color(0xff1A4F2F),
//                               ),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(18),
//                               ),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Please enter your password address';
//                               }
//                               if (!RegExp(
//                                       r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{6,}$')
//                                   .hasMatch(value)) {
//                                 return 'Password must contain at least 1 capital letter, 1 lowercase letter, and 1 number, and be at least 6 characters long';
//                               }
//                               if (value.length < 6) {
//                                 return "enter the more than 6 letter ";
//                               }
//                               return null;
//                             },
//                             onChanged: (item) {},
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           TextFormField(
//                             controller: _confirmController,
//                             decoration: InputDecoration(
//                               //  labelText: 'Confirm Password',

//                               hintText: 'Confirm Password',
//                               filled: true,
//                               fillColor: Color(0xffE0E9E4),
//                               hintStyle: const TextStyle(
//                                   color: Color(0xff1A4F2F),
//                                   fontWeight: FontWeight.bold),
//                               prefixIcon: const Icon(
//                                 Icons.lock,
//                                 color: Color(0xff1A4F2F),
//                               ),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(18),
//                               ),
//                             ),
//                             obscureText: true,
//                             validator: (value) {
//                               if (value != _passwordController.text) {
//                                 return 'Passwords do not match';
//                               }
//                               return null;
//                             },
//                           ),
//                           const SizedBox(
//                             height: 30,
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 45),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   'By signing you agree to our',
//                                   style: TextStyle(
//                                       color: Color(0xff1A4F2F),
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16),
//                                 ),
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   'Terms of use',
//                                   style: TextStyle(
//                                       color: Colors.grey[600],
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'and',
//                                 style: TextStyle(
//                                     color: Color(0xff1A4F2F),
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 15),
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Text(
//                                 'Privacy notice',
//                                 style: TextStyle(
//                                     color: Colors.grey[600],
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 15),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),

//                           Container(
//                               width: double.infinity,
//                               //  decoration: BoxDecoration(),
//                               child: ElevatedButton(
//                                   onPressed: () {
//                                     signup();
//                                     // Login();
//                                   },
//                                   style: ElevatedButton.styleFrom(
//                                     primary: Color(0xff1A4F2F),
//                                   ),
//                                   child: const Text(
//                                     'Sign Up',
//                                     style: TextStyle(color: Colors.white),
//                                   )))
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }

//   void signup() {
//     if (_formKey.currentState!.validate()) {
//       // Perform signup logic
//       // For example:
//       FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//               email: _emailController.text, password: _passwordController.text)
//           .then((userCredential) {
//         log(userCredential.user!.uid);
//         Navigator.pop(context);
//         // Signup successful
//       }).catchError((error) {
//         // Handle signup error
//         log(error.toString());
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text(error.toString())));
//       });
//     }
//   }
// }
