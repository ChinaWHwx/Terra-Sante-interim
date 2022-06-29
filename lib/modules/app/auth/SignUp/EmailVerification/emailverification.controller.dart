import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController {
  final String title = 'Enregistrez le code vérification';
  final String saisir = 'Suivant';
  final String rentrer = 'Rentrer';

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToEmail() {
    Get.toNamed(Routes.emailRoute);
  }

  navigateToPassword() {
    Get.toNamed(Routes.passwordRoute);
  }
}
