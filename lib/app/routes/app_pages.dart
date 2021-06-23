import 'package:app_dp/app/modules/detail/detail_bindings.dart';
import 'package:app_dp/app/modules/detail/detail_page.dart';
import 'package:app_dp/app/modules/home/home_bindings.dart';
import 'package:app_dp/app/modules/home/home_page.dart';
import 'package:app_dp/app/modules/login/login_bindings.dart';
import 'package:app_dp/app/modules/login/login_page.dart';
import 'package:app_dp/app/modules/splash/splash_bindings.dart';
import 'package:app_dp/app/modules/splash/splash_page.dart';
import 'package:app_dp/app/routes/app_routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AppRoutes.DETAIL,
      page: () => DetailPage(),
      binding: DetailBinding(),
    )
  ];
}
