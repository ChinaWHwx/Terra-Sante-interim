import 'package:get/get.dart';

class SignUpRepository extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://10.0.2.2';
  }

  Future addTypeStatusPhone(body) =>
      post("/register/add_type_status_phone", body);
}
