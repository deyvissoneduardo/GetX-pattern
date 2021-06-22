import 'package:app_dp/app/data/model/request_token.dart';
import 'package:app_dp/app/utils/constantes.dart';
import 'package:dio/dio.dart';

class AuthenticationApi {
  final Dio _dio;

  AuthenticationApi(this._dio);

  Future<RequestToken> newToken() async {
    final Response response = await _dio.get(
      '/authentication/token/new',
      queryParameters: {
        'api_key': Constantes.THEMOVIEAPI,
      },
    );
    return RequestToken.fromJson(response.data);
  }
}
