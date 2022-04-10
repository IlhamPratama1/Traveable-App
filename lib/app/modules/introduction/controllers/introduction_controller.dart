import 'package:get/get.dart';

class IntroductionController extends GetxController {
  RxInt slide = 0.obs;

  void setSlide(int index) {
    slide.value = index;
  }
}
