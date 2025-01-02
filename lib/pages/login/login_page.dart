import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

//class LoginPage extends GetView<LoginController> {
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controller.usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: controller.passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            Obx(() => ElevatedButton(
                  onPressed: controller.isButtonEnabled.value
                      ? controller.login
                      : null,
                  child: controller.isProcessing.value
                      ? const CircularProgressIndicator()
                      : const Text('Login'),
                )),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('back'),
            ),
          ],
        ),
      ),
    );
  }
}
