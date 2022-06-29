import 'package:flutter_application_1/repositories/signUp.repository.dart';
import 'package:get/get.dart';

class SignUpService {
  SignUpRepository signUpRepo = Get.find();

  Future addTypeStatusPhone(body) async {
    try {
      var response = await signUpRepo.addTypeStatusPhone(body);
      return response.body;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
