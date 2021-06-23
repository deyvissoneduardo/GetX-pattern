import 'package:app_dp/app/data/providers/local/local_auth.dart';
import 'package:app_dp/app/data/providers/remote/authentication_api.dart';
import 'package:app_dp/app/data/repository/local/local_auth_repo.dart';
import 'package:app_dp/app/data/repository/remote/authentication_repo.dart';
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

    // providers
    Get.lazyPut<AuthenticationApi>(() => AuthenticationApi());
    Get.lazyPut<LocalAuth>(() => LocalAuth());

    //repos
    Get.lazyPut<AuthenticationRepo>(() => AuthenticationRepo());
    Get.lazyPut<LocalAuthRepo>(() => LocalAuthRepo());
  }
}
