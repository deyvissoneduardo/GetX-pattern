import 'package:app_dp/app/data/model/request_token.dart';
import 'package:app_dp/app/data/repository/authentication_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _repo = Get.find<AuthenticationRepo>();
  String _username = '', _passoword = '';

  void onUserNameChanged(String text) {
    _username = text;
  }

  void onPasswordChanged(String text) {
    _passoword = text;
  }

  Future<void> submit() async {
    try {
      RequestToken requestToken = await _repo.newRequestToken();
      final RequestToken token = await _repo.authWithLogin(
        username: _username,
        password: _passoword,
        requestToken: requestToken.requestToken,
      );
      // ignore: avoid_print
      print('login ok => ${requestToken.requestToken}');
    } on Exception catch (e) {
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
