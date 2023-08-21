// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:netflix_uiapp/screen/bmi/bmi_controller.dart';
// class BmiScreen extends StatelessWidget {
//   final BmiController bmiController = Get.put(BmiController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: bmiController.bgColor.value,
//         child: Center(
//           child: Container(
//             width: 300,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'BMI',
//                   style: TextStyle(color: Colors.white, fontSize: 40),
//                 ),
//                 TextField(
//                   controller: bmiController.wtController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter the Weight in KGS',
//                     prefixIcon: Icon(Icons.line_weight),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 10),
//                 TextField(
//                   controller: bmiController.fitController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter the height in FEET',
//                     prefixIcon: Icon(Icons.height),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 10),
//                 TextField(
//                   controller: bmiController.inController,
//                   decoration: InputDecoration(
//                     labelText: 'Enter the Height in INCH',
//                     prefixIcon: Icon(Icons.height),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     bmiController.calculateBMI();
//                   },
//                   child: Text('Calculate BMI'),
//                 ),
//                 SizedBox(height: 20),
//                 Obx(
//                   () => Text(
//                     bmiController.result.value,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }













import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
   BmiScreen({super.key});
 
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
   var wtController = TextEditingController();
  var fitController = TextEditingController();
  var inController = TextEditingController();
  var result = '';
  var bgColor = Colors.orange.shade200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Container(
       color: bgColor,
      child: Center(
        child: Container(
          width: 300,
         
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI',
                  style: TextStyle(color: Colors.white,fontSize: 40),
                ),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                      label: Text('Enter the Weight in KGS'),
                      prefixIcon: Icon(Icons.line_weight)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: fitController,
                  decoration: InputDecoration(
                      label: Text('Enter the height in FEET'),
                      prefixIcon: Icon(Icons.height)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                      label: Text('Enter the Height in INCH'), prefixIcon: Icon(Icons.height)),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      var wt = wtController.text.toString();
                      var fit = fitController.text.toString();
                      var inch = inController.text.toString();
        
                      if(wt!= "" && fit!= "" && inch!= ""){
                       
                       var iWt =int.parse(wt);
                       var iFit =int.parse(fit);
                       var iInch = int.parse(inch);
        
                       var tInch =(iFit*12) + iInch; 
        
                       var tCm = tInch*2.54;
        
                       var tM = tCm/100;
        
                       var bmi = iWt/(tM*tM);
                     //  result = 'Your BMI is : $bmi';
                       var msg = "";
    
                       if(bmi>25){
                        msg="You're overweight";
                        bgColor = Colors.orange.shade200;
                       }else if(bmi<18){
                        msg = "You're underweight";
                        bgColor=Colors.red.shade200;
                       }
                       else {
                        msg ="You're Healthy";
                        bgColor = Colors.green.shade200;
                       }
                       setState(() {
                         result = '$msg \n your BMI is : ${bmi.toStringAsFixed(2)}';
                       });
                       
        
                      } else {
                         setState((){
                           result = 'Please fil the all the required blanks';
                         });
                      }
                    },
                    child: Text('Calculate')),
                    Text(result,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                      ),
                      )
              ],
            ),
        ),
      ),
    ),
    );
  }
}






