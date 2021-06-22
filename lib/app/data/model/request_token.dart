import 'package:intl/intl.dart';

class RequestToken {
  String success;
  DateTime expiresAt;
  String requestToken;

  RequestToken({
    success,
    this.expiresAt,
    this.requestToken,
  });

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
        expiresAt: DateFormat('yyyy-MM-dd hh:mm:ss').parse(json["expires_at"]),
        requestToken: json["request_token"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "expires_at": expiresAt.toString(),
        "request_token": requestToken,
      };
}
