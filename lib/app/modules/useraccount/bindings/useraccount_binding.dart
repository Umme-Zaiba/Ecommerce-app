import 'package:get/get.dart';

import '../controllers/useraccount_controller.dart';

class UseraccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UseraccountController>(
      () => UseraccountController(),
    );
  }
}
