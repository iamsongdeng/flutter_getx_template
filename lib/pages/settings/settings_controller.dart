import 'package:get/get.dart';

class SettingsController extends GetxController {
  final RxInt counter = 0.obs;
  final RxString name = 'John Doe'.obs;
  final RxString email = '12@3.4'.obs;

  @override
  onInit() {
    print('SettingsController onInit');
    super.onInit();
  }

  @override
  void onReady() {
    print('SettingsController onReady');
    super.onReady();
  }

  @override
  void onClose() {
    print('SettingsController onClose');
    super.onClose();
  }

  onDeleted() {
    print('SettingsController onDeleted');
  }

  void incrementCounter() {
    counter.value++;
  }

  void onTapChangeName() {
    name.value = 'Jane Doe 22222';
    email.value = '1234567';
    update();
  }

  void onTapChangeEmail() {
    email.value = 'abcdefg';
    name.value = 'Jane Doe 33333';
    update();
  }
}
