import 'package:flutter/material.dart';
import 'package:flutter_getx_template/common/index.dart';
import 'package:flutter_getx_template/pages/login/login_controller.dart';
import 'package:flutter_getx_template/pages/settings/settings2_page.dart';
import 'package:flutter_getx_template/pages/settings/settings_page.dart';

import 'package:get/get.dart';

///这个是展示未使用GetMaterialApp时，只使用了GetX的状态管理，使用 obs/Obx
///
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RxInt _counter = 0.obs;

  void _incrementCounter() {
    _counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(RouteNames.login);
            },
            icon: const Icon(Icons.person_2),
          ),
          const SizedBox(width: 24),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
                  '${_counter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteNames.settings);
                },
                child: const Text('Get.toNamed Go to Settings')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()),
                  );
                },
                child: const Text('Go to Settings')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Settings2Page()),
                  );
                },
                child: const Text('Go to Settings222')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
