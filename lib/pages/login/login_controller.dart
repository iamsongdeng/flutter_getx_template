import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final username = ''.obs;
  final password = ''.obs;

  RxBool isButtonEnabled = false.obs; // 登录按钮是否可用
  // 是否正在登录， 登录按钮变为 CircularProgressIndicator
  RxBool isProcessing = false.obs;

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
    // 监听输入框的变化
    usernameController.addListener(checkInput);
    passwordController.addListener(checkInput);
  }

  void checkInput() {
    final username = usernameController.text;
    final password = passwordController.text;

    final handleUserName = username.trim();
    final handlePassword = password.trim();
    // 当用户名为空时，设置密码也为空
    if (handleUserName.isEmpty) {
      passwordController.text = '';
    }
    // 根据输入框的字符数量判断是否启用登录按钮
    final isInputValid = handleUserName.isNotEmpty &&
        handleUserName.length <= 32 &&
        handlePassword.isNotEmpty &&
        handlePassword.length <= 32;
    // 更新按钮状态
    isButtonEnabled.value = isInputValid;
  }

  void login() {
    if (username.value == 'admin' && password.value == 'admin') {
      Get.offAllNamed('/home');
    } else {
      Get.snackbar('Error', 'Invalid username or password');
    }
  }
}
