import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  final String l1 = "Pas de soucis!";
  final String l2 =
      "Veuillez s'il vous plaît indiquer votre numero de téléphone.";
  final String l3 = "Nous vous enverrons un SMS.";
  final String envoyer = 'Envoyer un SMS';
  final String rentrer = 'Rentrer';
  final TextEditingController textEditingController = TextEditingController();

  final errorMessage = "".obs;

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToStatus() {
    Get.toNamed(Routes.signInRoute);
  }

  navigateToForgotPasswordSmsVerification() {
    Get.toNamed(Routes.forgotPasswordSmsVerificationRoute);
  }

  validateForm() {
    if (textEditingController.text.isEmpty) {
      errorMessage.value = "Numero de téléphone vide";
    } else if (!GetUtils.isPhoneNumber(textEditingController.text)) {
      errorMessage.value = 'Ce n\'est pas un numéro de téléphone!';
    } else {
      navigateToForgotPasswordSmsVerification();
    }
  }
}
