import 'package:app_dp/app/data/model/request_token.dart';
import 'package:app_dp/app/data/repository/local/local_auth_repo.dart';
import 'package:app_dp/app/data/repository/remote/authentication_repo.dart';
import 'package:app_dp/app/routes/app_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final AuthenticationRepo _authenticationRepo = Get.find<AuthenticationRepo>();
  final LocalAuthRepo _localAuthRepo = Get.find<LocalAuthRepo>();
  String _username = '', _passoword = '';

  void onUserNameChanged(String text) {
    _username = text;
  }

  void onPasswordChanged(String text) {
    _passoword = text;
  }

  Future<void> submit() async {
    try {
      RequestToken requestToken = await _authenticationRepo.newRequestToken();
      final RequestToken token = await _authenticationRepo.authWithLogin(
        username: _username,
        password: _passoword,
        requestToken: requestToken.requestToken,
      );
      await _localAuthRepo.setSession(token);
      Get.offAndToNamed(AppRoutes.HOME);
    } on Exception catch (e) {
      // ignore: avoid_print
      print(e);
      String message = '';
      if (e is DioError) {
        if (e.response != null) {
          message = e.response.statusMessage;
        } else {
          message = e.message;
        }
      }
      Get.dialog(AlertDialog(
        title: const Text('error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('OK'),
          ),
        ],
      ));
    }
  }
}
