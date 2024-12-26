import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'settings_controller.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late SettingsController controller;

  @override
  void initState() {
    super.initState();
    print('SettingsPage initState');
    controller = Get.put(SettingsController());
  }

  @override
  void dispose() {
    super.dispose();
    print('SettingsPage dispose');
    Get.delete<SettingsController>();
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
            _buildEmail(),
            const Spacer(),
            _buildUserCard(),
            const Spacer(),
            const Text(
              '(GetxController, GetView, obs,Obx)You have pushed the button this many times:',
            ),
            Obx(() => Text(
                  '${controller.counter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildName() {
    return GetBuilder<SettingsController>(builder: (_) {
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
    });
  }

  Widget _buildEmail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Email: '),
        Text(
          controller.email.value,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ElevatedButton(
          onPressed: () => controller.onTapChangeEmail(),
          child: const Text('Change Email '),
        ),
      ],
    );
  }

  Widget _buildUserCard() {
    return GetX<SettingsController>(builder: (_) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'User: (${controller.counter.value})   ',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Text('Name: '),
          Text(
            controller.name.value,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            '  Email: ${controller.email.value}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      );
    });
  }
}