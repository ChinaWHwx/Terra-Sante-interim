import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class EmailVerificationTimeOutController extends GetxController {
  navigateToSignInPage() {
    Get.toNamed(Routes.emailVerificationRoute);
  }
}
