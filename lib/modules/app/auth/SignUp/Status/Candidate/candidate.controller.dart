import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class CandidateController extends GetxController {
  late String status;
  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToSignUpRoute() {
    Get.toNamed(Routes.signUpRoute);
  }
}
