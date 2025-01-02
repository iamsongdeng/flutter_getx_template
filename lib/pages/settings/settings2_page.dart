import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'settings_controller.dart';

///在Widget的build方法中使用GetBuilder来初始化controller
///当页面销毁时，GetBuilder会自动释放controller
class Settings2Page extends StatefulWidget {
  const Settings2Page({super.key});

  @override
  State<Settings2Page> createState() => _Settings2PageState();
}

class _Settings2PageState extends State<Settings2Page> {
  //late SettingsController controller;

  @override
  void initState() {
    super.initState();
    print('Settings222Page initState');
    //controller = Get.put(SettingsController());
  }

  @override
  void dispose() {
    super.dispose();
    print('Settings222Page dispose');
    //Get.delete<SettingsController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go to Home')),
            const Spacer(),
            _buildName(),
            //_buildEmail(),
            // const Text(
            //   '(GetxController, GetView, obs,Obx)You have pushed the button this many times:',
            // ),
            // Obx(() => Text(
            //       '${controller.counter.value}',
            //       style: Theme.of(context).textTheme.headlineMedium,
            //     )),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: controller.incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  Widget _buildName() {
    return GetBuilder<SettingsController>(
      init: SettingsController(),
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Name: '),
            Text(
              controller.name.value,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () => controller.onTapChangeName(),
              child: const Text('Change Name'),
            ),
            Text(
              '  Email: ${controller.email.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Obx(() => Text(
            //       '  Email: ${controller.email.value}',
            //       style: Theme.of(context).textTheme.headlineMedium,
            //     )),
          ],
        );
      },
    );
  }

  // Widget _buildEmail() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: <Widget>[
  //       const Text('Email: '),
  //       Text(
  //         controller.email.value,
  //         style: Theme.of(context).textTheme.headlineMedium,
  //       ),
  //       ElevatedButton(
  //         onPressed: () => controller.onTapChangeEmail(),
  //         child: const Text('Change Email '),
  //       ),
  //     ],
  //   );
  // }
}
