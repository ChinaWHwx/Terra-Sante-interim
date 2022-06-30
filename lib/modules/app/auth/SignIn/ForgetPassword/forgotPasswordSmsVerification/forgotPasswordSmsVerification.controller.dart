import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class ForgotPasswordSmsVerificationController extends GetxController {
  final String title = "Vérifiez votre numéro de téléphone";
  final TextEditingController textEditingController = TextEditingController();

  final errorMessage = "".obs;

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToForget() {
    Get.toNamed(Routes.signUpRoute);
  }

  navigateToReset() {
    Get.toNamed(Routes.resetPasswordRoute);
  }

  validateForm() {
    if (textEditingController.text.isEmpty) {
      errorMessage.value = "code vide";
    } else if (!GetUtils.isNumericOnly(textEditingController.text)) {
      errorMessage.value = 'Ce n\'est pas les chiffres!';
    } else if (!GetUtils.isLengthEqualTo(textEditingController.text, 4)) {
      errorMessage.value = 'Quatre chiffres requis';
    } else {
      navigateToReset();
    }
  }
}
