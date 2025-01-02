import 'package:flutter/material.dart';
import 'package:flutter_getx_template/common/global/app_global.dart';
import 'package:flutter_getx_template/common/global/global_controller_binding.dart';
import 'package:flutter_getx_template/common/routers/route_names.dart';
import 'package:flutter_getx_template/common/routers/route_pages.dart';
import 'package:flutter_getx_template/pages/home/home_page.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppGlobal.init().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      getPages: RoutePages.getPages,
      initialRoute: RouteNames.home,

      ///使用bingding的第三种方式，使用GlobalControllerBinding
      initialBinding: GlobalControllerBinding(),
      //home: const HomePage(),
    );
  }
}
