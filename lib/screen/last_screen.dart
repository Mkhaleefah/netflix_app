import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'For JudyS',
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_box))
        ],
        // leading: Text(
        //   'For JudyS',

        // ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Chip(
                // avatar: const Text('AB'),
                label: const Text('Aaron Burr'),
              ),
              Chip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.black,
                // avatar: const Text('AB'),
                label: const Text(
                  'Aaron Burr',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Chip(
                // avatar: const Text('AB'),
                label: const Text('Aaron Burr'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
