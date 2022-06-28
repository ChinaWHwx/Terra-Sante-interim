import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class EmailController extends GetxController {
  final String title = 'Saissiez votre adress de mail';
  final String envoyer = 'Envoyer un mail';
  final String rentrer = 'Rentrer';
  final TextEditingController textEditingController = TextEditingController();
  final errorMessage = "".obs;

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToEmailVerification() {
    Get.toNamed(Routes.emailVerificationRoute);
  }

  navigateToSmsVerification() {
    Get.toNamed(Routes.smsVerificationRoute);
  }

  validateForm() {
    //textEditingController.text;
    if (textEditingController.text.isEmpty) {
      errorMessage.value = 'Adresse mail vide';
    } else if (!GetUtils.isEmail(textEditingController.text)) {
      errorMessage.value = 'Ce n\'est pas un mail!';
    } else {
      navigateToEmailVerification();
    }
  }
}
