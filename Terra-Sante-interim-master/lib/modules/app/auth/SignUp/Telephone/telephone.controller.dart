import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/modules/app/auth/auth.controller.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class TelephoneController extends GetxController {
  final String envoyer = 'Envoyer un SMS';
  final String rentrer = 'Rentrer';
  final TextEditingController textEditingController = TextEditingController();

  final errorMessage = "".obs;

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToStatus() {
    String type = Get.find<AuthController>().type;
    if (type == 'candidate') {
      Get.toNamed(Routes.candidateRoute);
    } else {
      Get.toNamed(Routes.recruiterRoute);
    }
  }

  navigateToSmsVerification() {
    Get.toNamed(Routes.smsVerificationRoute);
  }

  validateForm() {
    if (textEditingController.text.isEmpty) {
      errorMessage.value = "Numero de téléphone vide";
    } else if (!GetUtils.isPhoneNumber(textEditingController.text)) {
      errorMessage.value = 'Ce n\'est pas un numéro de téléphone!';
    } else {
      navigateToSmsVerification();
    }
  }
}
