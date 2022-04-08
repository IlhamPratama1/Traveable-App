import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedMenu = 0.obs;

  void setSelectedMenu(int index) {
    selectedMenu.value = index;
  }
}
