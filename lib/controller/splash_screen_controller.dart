import 'package:get/get.dart';
import 'package:netflix_uiapp/pages/slidepage1.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(Duration(seconds: 5))
        .then((value) => Get.off(() => SlidePage1()));
    super.onInit();
  }
  
}
