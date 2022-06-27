import 'package:flutter_application_1/repositories/login.repository.dart';
import 'package:get/get.dart';

class LoginService {
  LoginRepository loginRepo = Get.find();

  Future getInfos(body) async {
    try {
      var response = await loginRepo.getInfos(body);
      return response.body;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
