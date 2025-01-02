import 'package:flutter_getx_template/pages/login/login_controller.dart';
import 'package:get/get.dart';

class GlobalControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}
