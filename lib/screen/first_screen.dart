import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          "Who's Watching?",
          style: GoogleFonts.quicksand(
              color: Colors.white, fontWeight: FontWeight.w700),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Menu',
              style: GoogleFonts.quicksand(
                  color: Colors.white, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
