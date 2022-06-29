import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class ExperienceController extends GetxController {
  navigateToHomePage() {
    Get.toNamed(Routes.homepageRoute);
  }

  navigateToWelcome() {
    Get.toNamed(Routes.welcomeRoute);
  }

  void setSelected(value) {
    selected.value = value;
  }

  final selected = "Moins de 1 ans".obs;

  final selected2 = "Non".obs;

  List<String> dropdownText = [
    'Moins de 1 ans',
    'De 1 ans à 3 ans',
    'De 3 ans à 6 ans',
    'Plus de 6 ans'
  ];

  List<String> dropdownText2 = [
    'Oui',
    'Non',
  ];

  String? selectedItem = 'Moins de 1 ans';

  String? selected2Item = 'Non';
}
