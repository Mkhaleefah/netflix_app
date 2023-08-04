// // import 'package:flutter/material.dart';

// // class JudyScreen extends StatelessWidget {
// //   const JudyScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
      
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class JudyScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 150,
//           width: 150,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(
//                   'https://wallpapers.com/images/hd/netflix-profile-pictures-1000-x-1000-88wkdmjrorckekha.jpg'),
//             ),
//           ),
//           child: LoadingView(),
//           alignment: Alignment.topCenter,
//         ),
//       ),
//     );
//   }
// }

// class LoadingView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration(minutes: 1), () {
//       Get.off(SecondScreen());
//     });

//     return CircularProgressIndicator();
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Center(
//         child: Text('This is the second screen.'),
//       ),
//     );
//   }
// }

// // void main() {
// //   runApp(GetMaterialApp(
// //     home: JudyScreen(),
// //   ));
// // }
