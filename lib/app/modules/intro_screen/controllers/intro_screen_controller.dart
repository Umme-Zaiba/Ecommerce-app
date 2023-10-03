// import 'dart:async';

import 'package:get/get.dart';

class IntroScreenController extends GetxController {
  //TODO: Implement IntroScreenController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit(
    // Timer(Duration(milliseconds: 5000), () => print('timer done')),
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
