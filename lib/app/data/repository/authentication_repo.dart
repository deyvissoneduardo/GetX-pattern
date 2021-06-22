import 'package:app_dp/app/data/model/request_token.dart';
import 'package:app_dp/app/data/providers/authentication_api.dart';
import 'package:get/get.dart';

class AuthenticationRepo {
  final AuthenticationApi _api = Get.find<AuthenticationApi>();

  Future<RequestToken> newRequestToken() => _api.newToken();
}
