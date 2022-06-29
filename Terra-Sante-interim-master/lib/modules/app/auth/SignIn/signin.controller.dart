import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final String login = 'Se connecter';
  final String check = 'Vous oubliez votre compte? Recherchez-vous';
  Rx<bool> isVisible = false.obs;

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToForgetPassword() {
    Get.toNamed(Routes.forgetPasswordRoute);
  }

  toggleIsVisible() {
    isVisible.value = !isVisible.value;
  }
}
