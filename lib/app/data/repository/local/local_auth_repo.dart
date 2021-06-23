import 'package:app_dp/app/data/model/request_token.dart';
import 'package:app_dp/app/data/providers/local/local_auth.dart';
import 'package:get/get.dart';

class LocalAuthRepo {
  final LocalAuth _localAuth = Get.find<LocalAuth>();

  Future<RequestToken> get session => _localAuth.getSession();

  Future<void> clearSession() => _localAuth.clearSession();

  Future<void> setSession(RequestToken requestToken) =>
      _localAuth.setSession(requestToken);
}
