import 'package:app_dp/app/data/providers/remote/authentication_api.dart';
import 'package:app_dp/app/data/repository/authentication_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class DependecyInjection {
  // carrega IDepn
  static void init() {
    Get.lazyPut<FlutterSecureStorage>(() => const FlutterSecureStorage());
    Get.lazyPut<Dio>(
      () => Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')),
    );
    Get.lazyPut<AuthenticationApi>(() => AuthenticationApi());
    Get.lazyPut<AuthenticationRepo>(() => AuthenticationRepo());
  }
}
