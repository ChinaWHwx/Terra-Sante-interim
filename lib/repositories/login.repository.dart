import 'dart:convert';

import 'package:flutter_application_1/models/user.model.dart';
import 'package:get/get.dart';

class LoginRepository extends GetConnect {
  @override
  void onInit() {
    //httpClient.defaultDecoder = User.userFromJson;
    //httpClient.defaultDecoder =
    httpClient.baseUrl = 'http://10.0.2.2';
  }

  Future getInfos(body) => post("/login", body);
}
