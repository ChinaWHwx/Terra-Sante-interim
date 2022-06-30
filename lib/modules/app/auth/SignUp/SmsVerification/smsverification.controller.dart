import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class SmsVerificationController extends GetxController {
  final String title = "Vérifiez votre numéro de téléphone";
  final TextEditingController textEditingController = TextEditingController();

  final errorMessage = "".obs;

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToTelephone() {
    Get.toNamed(Routes.signUpRoute);
  }

  navigateToEmail() {
    Get.toNamed(Routes.emailRoute);
  }

  validateForm() {
    if (textEditingController.text.isEmpty) {
      errorMessage.value = "code vide";
    } else if (!GetUtils.isNumericOnly(textEditingController.text)) {
      errorMessage.value = 'Votre code se compose de chiffres seulement';
    } else if (!GetUtils.isLengthEqualTo(textEditingController.text, 4)) {
      errorMessage.value = 'Quatre chiffres requis';
    } else {
      navigateToEmail();
    }
  }
}
