import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class CandidateController extends GetxController {
  final String title = 'Choissiez votre status:';
  final String student = 'étudiant,e';
  final String preprer = 'Préparateur,trice';
  final String pharmaciste = 'Pharmacien,ne';
  final String rentrer = 'Rentrer';
  var index = 0.obs;
  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToSignUpRoute() {
    Get.toNamed(Routes.signUpRoute);
  }
}
