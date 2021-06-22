import 'package:app_dp/app/data/model/request_token.dart';
import 'package:app_dp/app/data/providers/authentication_api.dart';

class AuthenticationRepo {
  final AuthenticationApi _api;

  AuthenticationRepo(this._api);

  Future<RequestToken> newRequestToken() => _api.newToken();
}
