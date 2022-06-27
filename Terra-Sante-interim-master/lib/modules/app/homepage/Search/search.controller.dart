import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  navigateToHomePage() {
    Get.toNamed(Routes.homepageRoute);
  }

  navigateToMy() {
    Get.toNamed(Routes.myRoute);
  }

  navigateToSignIn() {
    Get.toNamed(Routes.signIn);
  }
}
