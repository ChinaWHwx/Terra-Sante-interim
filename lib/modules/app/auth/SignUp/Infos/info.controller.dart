import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class InfoController extends GetxController {
  final String title = 'Rejoingnez Terra Santé';
  final String bonjour = 'Bonjour, si on apprenait à mieux se connaître?';
  final String enregistrer = "Enregistrez";
  final TextEditingController prenomEditingController = TextEditingController();
  final TextEditingController nomEditingController = TextEditingController();

  final selected = "Monsieur".obs;
  final nameErrorMessage = "".obs;
  Rx<String> errorMessage = "".obs;
  final Rx<bool> isChecked = false.obs;

  List<String> dropdownText = ['Monsieur', 'Madame', 'Autre'];

  void setSelected(value) {
    selected.value = value;
  }

  void toggleIsChecked(bool? value) {
    isChecked.value = value!;
  }

  void navigateToAddress() {
    Get.toNamed(Routes.auth);
  }

  void navigateToHomePage() {
    Get.toNamed(Routes.homepage);
  }

  void navigateToPassword() {
    Get.toNamed(Routes.passwordRoute);
  }

  validateForm() {
    if (prenomEditingController.text.isEmpty ||
        nomEditingController.text.isEmpty) {
      errorMessage.value = "Champs obligatoire";
    } else if (isChecked.value == false) {
      errorMessage.value = "Il faut bien lire et valider";
    } else {
      navigateToPassword();
    }
  }
}
