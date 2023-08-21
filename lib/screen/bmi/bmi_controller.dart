import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiController extends GetxController {
  final wtController = TextEditingController();
  final fitController = TextEditingController();
  final inController = TextEditingController();
  final result = ''.obs;
  final bgColor = Rx<Color>(Colors.orange.shade200);

  void calculateBMI() {
    var wt = wtController.text.toString();
    var fit = fitController.text.toString();
    var inch = inController.text.toString();

    if (wt != '' && fit != '' && inch != '') {
      var iWt = int.parse(wt);
      var iFit = int.parse(fit);
      var iInch = int.parse(inch);

      var tInch = (iFit * 12) + iInch;

      var tCm = tInch * 2.54;

      var tM = tCm / 100;

      var bmi = iWt / (tM * tM);

      var msg = '';

      if (bmi > 25) {
        msg = "You're overweight";
        bgColor.value = Colors.orange.shade200;
      } else if (bmi < 18) {
        msg = "You're underweight";
        bgColor.value = Colors.red.shade200;
      } else {
        msg = "You're Healthy";
        bgColor.value = Colors.green.shade200;
      }

      result.value = '$msg\nYour BMI is: ${bmi.toStringAsFixed(2)}';
    } else {
      result.value = 'Please fill all the required fields';
    }
  }
}









// import 'package:get/get.dart';

// class BMIController extends GetxController {
//   RxDouble height = RxDouble(170);
//   RxDouble weight = RxDouble(70);
//   RxDouble bmi = RxDouble(0);

//   void calculateBMI() {
//     double heightInMeters = height.value / 100;
//     double calculatedBMI = weight.value / (heightInMeters * heightInMeters);
//     bmi.value = calculatedBMI;
//   }
// }