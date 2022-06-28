import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class AbilityController extends GetxController {
  List<String> options = ["Word", "Excel", "PPT"];
  Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  Rx<List<String>> selectedDropdownText = Rx<List<String>>([]);
  final TextEditingController textEditingController = TextEditingController();
  final errorMessage = "".obs;
  var selectedOption = ''.obs;
  var selectedOption2 = ''.obs;

  navigateToHomePage() {
    Get.toNamed(Routes.homepageRoute);
  }

  navigateToWelcome() {
    Get.toNamed(Routes.welcomeRoute);
  }

  void setSelected(value) {
    selected.value = value;
  }

  final selected = "Chinois".obs;

  final selected2 = " ".obs;

  validateForm() {
    if (textEditingController.text.isEmpty) {
      errorMessage.value = 'Décrivez vous par quelques mots';
    } else if (!GetUtils.isAlphabetOnly(textEditingController.text)) {
      errorMessage.value = 'Il doit être seulement les caractères';
    } else {
      navigateToWelcome();
    }
  }

  List<String> dropdownText = [
    'Français',
    'Angalais',
    'Allemangne',
    'Espagne',
    'Italienne',
    'Chinois',
    'Japonais',
  ];

  List<String> dropdownText2 = [
    ' ',
    'Langue maternelle',
    'Fluent',
    'Courant',
    'Débutant',
  ];

  List<String> dropdownText3 = [
    'LPCL',
    'JPG',
    'PDF',
    'PNG',
  ];

  List<String> dropdownText4 = [
    'Oui',
    'Non',
  ];
}
