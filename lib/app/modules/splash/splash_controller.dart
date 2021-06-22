import 'package:get/get.dart';
import 'package:app_dp/app/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      Get.offNamed(
        AppRoutes.HOME,
      );
    } on Exception catch (e) {
      // ignore: avoid_print
      print('**** $e *******');
    }
  }
}
