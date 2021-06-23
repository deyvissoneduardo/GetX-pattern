import 'package:app_dp/app/data/model/request_token.dart';
import 'package:app_dp/app/data/providers/remote/authentication_api.dart';
import 'package:meta/meta.dart' show required;
import 'package:get/get.dart';

class AuthenticationRepo {
  final AuthenticationApi _api = Get.find<AuthenticationApi>();

  Future<RequestToken> newRequestToken() => _api.newToken();

  Future<RequestToken> authWithLogin({
    @required String username,
    @required String password,
    @required String requestToken,
  }) {
    return _api.validateWithLogin(
      username: username,
      password: password,
      requestToken: requestToken,
    );
  }
}
