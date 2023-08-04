import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:netflix_uiapp/pages/login_page.dart';

class SlidePage1 extends StatelessWidget {
  // const SlidePage1({super.key});

  // Define your intro slider data
  final List<Slide> slides = [
    Slide(
      //  title: 'Watch on any device',
      description:
          'Watch on any device        Stream on Your phone, tablet, laptop, and TV without paying more',
      pathImage:
          'assets/images/slidepage1.png', // Use 'pathImage' instead of 'imageUrl'
      backgroundColor: Colors.black,
      styleTitle: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      styleDescription: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    Slide(
      //  title: 'Watch on any device',
      maxLineTextDescription: 3,
      widgetDescription: Column(
        children: [
          Text(
            'Download and go',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Text(
            'dont know the code',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            'dont know the code',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('SIGN IN'))
        ],
      ),
      // description:
      //     'Download and go',
      pathImage:
          'assets/images/slidepage2.png', // Use 'pathImage' instead of 'imageUrl'
      backgroundColor: Colors.black,
      styleTitle: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      styleDescription: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    Slide(
      // title: 'Watch on any device',
      description: 'No Pesky contraxts',
      maxLineTitle: 2,
      centerWidget: Text(
        'data is passing',
        style: TextStyle(color: Colors.amber, fontSize: 60),
      ),
      pathImage:
          'assets/images/sildepage3.png', // Use 'pathImage' instead of 'imageUrl'
      backgroundColor: Colors.black,
      styleTitle: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      styleDescription: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    // Add more slides as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //         appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'NETFLIX',
          style: GoogleFonts.lato(
            color: Colors.redAccent,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [
          Row(
            children: [
              Text(
                'Privacy',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Menu',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntroSlider(
          slides: slides,
          renderNextBtn: Icon(Icons.arrow_forward, color: Colors.white),
          renderDoneBtn: Icon(Icons.done, color: Colors.white),

          // Customize the appearance of navigation buttons if needed
          onDonePress: () {
            Get.to(()=>LoginPage());
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => LoginPage(),
            //   ),
            // );
            // Handle the action when the user taps the "Done" button
            // You can navigate to the next page or perform any other action here
          },
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class SlidePage1 extends StatelessWidget {
//   const SlidePage1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           title: Text(
//             'NETFLIX',
//             style: GoogleFonts.lato(
//               color: Colors.redAccent,
//               fontSize: 30,
//               fontStyle: FontStyle.italic,
//             ),
//           ),
//           actions: [
//             Row(
//               children: [
//                 Text(
//                   'Privacy',
//                   style: GoogleFonts.lato(
//                       color: Colors.white,
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   'Menu',
//                   style: GoogleFonts.lato(
//                       color: Colors.white,
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             )
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Container(
//                 // decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/017/073/549/small_2x/woman-working-at-her-desk-at-home-woman-working-with-laptop-at-her-work-desk-and-testing-ui-and-ux-illustration-of-student-studying-at-home-vector.jpg'))),
//                 child: Image.asset('assets/images/slidepage1.png'),
//               ),
//               Text(
//                 'Watch on',
//                 style: GoogleFonts.lato(
//                     color: Colors.white,
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'any device',
//                 style: GoogleFonts.lato(
//                     color: Colors.white,
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Text(
//                 'Stream on Your phone,tablet,',
//                 style: GoogleFonts.lato(
//                     color: Colors.white,
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'laptop,and TV without paying more',
//                 style: GoogleFonts.lato(
//                     color: Colors.white,
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ));
//   }
// }
