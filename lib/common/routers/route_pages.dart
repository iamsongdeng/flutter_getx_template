import 'package:flutter_getx_template/common/routers/route_names.dart';
import 'package:flutter_getx_template/pages/home/home_page.dart';
import 'package:flutter_getx_template/pages/login/login_binding.dart';
import 'package:flutter_getx_template/pages/login/login_controller.dart';
import 'package:flutter_getx_template/pages/login/login_page.dart';
import 'package:flutter_getx_template/pages/settings/settings_page.dart';
import 'package:get/get.dart';

class RoutePages {
  static final List<GetPage> getPages = [
    GetPage(
      name: RouteNames.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => const LoginPage(),

      ///这里使用了binding（BindingsBuilder），会在页面创建时自动创建controller (使用binding的第一种方式)
      // binding: BindingsBuilder(() {
      //   Get.put<LoginController>(LoginController());
      // }),

      ///这里使用了binding类，会在页面创建时自动创建controller (使用binding的第二种方式)
      binding: LoginBinding(),

      ///还有使用bingding的第三种方式，使用GlobalControllerBinding，在GetMaterialApp中配置
    ),
    GetPage(
      name: RouteNames.settings,
      page: () => const SettingsPage(),
    ),
  ];
}
