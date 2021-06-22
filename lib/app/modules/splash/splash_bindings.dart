import 'package:app_dp/app/data/providers/authentication_api.dart';
import 'package:app_dp/app/data/repository/authentication_repo.dart';
import 'package:app_dp/app/modules/splash/splash_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3'),
    );
    final api = AuthenticationApi(dio);
    final repo = AuthenticationRepo(api);
    Get.lazyPut(() => SplashController(repo));
  }
}
