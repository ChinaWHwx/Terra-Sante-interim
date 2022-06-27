import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class RecruiterController extends GetxController {
  final String title = 'Choissiez votre status:';
  final String owner = 'Titulaire principal,e';
  final String holder = 'Titulaire adjoint,e';
  final String responsible = 'Responsable';
  final String rentrer = 'Rentrer';
  var index = 0.obs;

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToSignUpRoute() {
    Get.toNamed(Routes.signUpRoute);
  }
}
