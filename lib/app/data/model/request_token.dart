import 'dart:convert';
import 'package:meta/meta.dart';

class RequestToken {
  String success;
  String expiresAt;
  String requestToken;

  RequestToken({
    success,
    this.expiresAt,
    this.requestToken,
  });

  // final bool success;
  // final String expiresAt;
  // final String requestToken;

  RequestToken copyWith({
    bool success,
    String expiresAt,
    String requestToken,
  }) =>
      RequestToken(
        success: success ?? this.success,
        expiresAt: expiresAt ?? this.expiresAt,
        requestToken: requestToken ?? this.requestToken,
      );

  factory RequestToken.fromJson(Map<String, dynamic> json) => RequestToken(
        success: json["success"],
        expiresAt: json["expires_at"],
        requestToken: json["request_token"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "expires_at": expiresAt,
        "request_token": requestToken,
      };
}
