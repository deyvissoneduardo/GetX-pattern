import 'package:app_dp/app/data/model/request_token.dart';
import 'package:app_dp/app/data/repository/local/local_auth_repo.dart';
import 'package:get/get.dart';
import 'package:app_dp/app/routes/app_routes.dart';

class SplashController extends GetxController {
  final LocalAuthRepo _localAuthRepo = Get.find<LocalAuthRepo>();

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      // await Future.delayed(const Duration(seconds: 2));
      final RequestToken requestToken = await _localAuthRepo.session;

      Get.offNamed(
        requestToken != null ? AppRoutes.HOME : AppRoutes.LOGIN,
      );
    } on Exception catch (e) {
      // ignore: avoid_print
      print('**** $e *******');
    }
  }
}
