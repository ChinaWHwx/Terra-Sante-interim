import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  late String type;

  navigateToSignIn() {
    Get.toNamed(Routes.signInRoute);
  }

  navigateToCandidate() {
    type = 'candidat';
    Get.toNamed(Routes.candidateRoute);
  }

  navigateToRecruiter() {
    type = 'recruteur';
    Get.toNamed(Routes.recruiterRoute);
  }

  navigateTest() {
    Get.toNamed(Routes.calendarRoute);
  }

  navigateToHomePage() {
    Get.toNamed(Routes.homepage);
  }
}
