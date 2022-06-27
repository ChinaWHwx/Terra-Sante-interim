import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));
String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    required this.userEmail,
    required this.userPassword,
  });

  String userEmail;
  String userPassword;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        userEmail: json["user_email"],
        userPassword: json["user_password"],
      );

  Map<String, dynamic> toJson() => {
        "user_email": userEmail,
        "user_password": userPassword,
      };
}
