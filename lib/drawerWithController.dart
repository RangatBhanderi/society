import 'package:get/get.dart';

class DrawerWithController extends GetxController {
  List numbers = [];
  RxBool showDialPad=false.obs;
RxInt a=0.obs;
  void addNumbers(num) {
    if (numbers.length < 4) {
      print(num);
      if (num == 10) {
        numbers.add(0);
      } else {
        numbers.add(num + 1);
      }
    }
    update();
  }
}
