import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://wallpapers.com/images/hd/netflix-profile-pictures-1000-x-1000-88wkdmjrorckekha.jpg',
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      'Judy',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset(
                    //   'assets/images/netflix logo image.jpg',
                    //   height: 300,
                    //   width: 300,
                    // ),
                    Image.network(
                      'https://media.baamboozle.com/uploads/images/26124/1604620069_27268',
                      height: 120,
                      width: 120,
                    ),
                    Text(
                      'Children',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.white)),
              child: Icon(
                Icons.add,
                color: Colors.grey,
                size: 100,
              ),
            ),
            Text(
              'Add Profile',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
