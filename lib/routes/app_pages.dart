import 'package:get/get.dart';
import 'package:shifu/pages/home/home_controller.dart';
import 'package:shifu/pages/home/home_page.dart';
import 'package:shifu/pages/login/login_page.dart';
import 'package:shifu/pages/order/order_page.dart';
import 'package:shifu/pages/profile/profile_page.dart';
import 'package:shifu/pages/startup/startup_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = <GetPage>[
    GetPage(
      name: Routes.STARTUP,
      page: () => const StartupPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => HomeController());
      }),
    ),
    GetPage(
      name: Routes.ORDER,
      page: () => OrderPage(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const ProfilePage(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
    ),
  ];
}
