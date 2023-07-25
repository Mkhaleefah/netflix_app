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
