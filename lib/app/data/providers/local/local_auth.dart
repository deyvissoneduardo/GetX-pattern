import 'dart:convert';

import 'package:app_dp/app/data/model/request_token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class LocalAuth {
  // ignore: constant_identifier_names
  static const KEY = 'session';
  final FlutterSecureStorage _secureStorage = Get.find<FlutterSecureStorage>();

  //obtem sessao atual
  Future<RequestToken> getSession() async {
    final String data = await _secureStorage.read(key: KEY);
    if (data != null) {
      final RequestToken requestToken = RequestToken.fromJson(jsonDecode(data));
      // token expirado
      if (DateTime.now().isBefore(requestToken.expiresAt)) {
        return requestToken;
      }
      return Get.dialog(AlertDialog(
        title: const Text('Token not valid'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('OK'),
          )
        ],
      ));
    }
    return Get.dialog(AlertDialog(
      title: const Text('Not Session'),
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: const Text('OK'),
        )
      ],
    ));
  }

  // guarda sessao local
  Future<void> setSession(RequestToken requestToken) async {
    await _secureStorage.write(
      key: KEY,
      value: jsonEncode(requestToken.toJson()),
    );
  }
}
