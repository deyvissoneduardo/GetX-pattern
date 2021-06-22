import 'package:app_dp/app/data/model/request_token.dart';
import 'package:app_dp/app/utils/constantes.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart' show required;
import 'package:get/get.dart';

class AuthenticationApi {
  final Dio _dio = Get.find<Dio>();

  Future<RequestToken> newToken() async {
    final response = await _dio.get(
      '/authentication/token/new',
      queryParameters: {
        'api_key': Constantes.THEMOVIEAPI,
      },
    );
    return RequestToken.fromJson(response.data);
  }

  Future<RequestToken> validateWithLogin({
    @required String username,
    @required String password,
    @required String requestToken,
  }) async {
    final response = await _dio.post(
      '/authentication/token/validate_with_login',
      queryParameters: {
        'api_key': Constantes.THEMOVIEAPI,
      },
      data: {
        "username": username,
        "password": password,
        "request_token": requestToken
      },
    );
    return RequestToken.fromJson(response.data);
  }
}
