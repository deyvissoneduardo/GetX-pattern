import 'package:app_dp/app/data/model/request_token.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:app_dp/app/data/repository/authentication_repo.dart';
import 'package:app_dp/app/routes/app_routes.dart';

class SplashController extends GetxController {
  final AuthenticationRepo _repo = Get.find<AuthenticationRepo>();

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      RequestToken token = await _repo.newRequestToken();
      // ignore: avoid_print
      print('TOKEN => ${token.requestToken}');
      Get.offNamed(AppRoutes.HOME);
    } on Exception catch (e) {
      // ignore: avoid_print
      print('**** $e *******');
    }
  }
}
