import 'package:app_dp/app/data/providers/authentication_api.dart';
import 'package:app_dp/app/data/repository/authentication_repo.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DependecyInjection {
  // carrega IDepn
  static void init() {
    Get.lazyPut<Dio>(
      () => Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')),
    );
    Get.lazyPut<AuthenticationApi>(() => AuthenticationApi());
    Get.lazyPut<AuthenticationRepo>(() => AuthenticationRepo());
  }
}
