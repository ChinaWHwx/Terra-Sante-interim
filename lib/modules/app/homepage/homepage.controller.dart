import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController {
  navigate(int i) {
    switch (i) {
      case 0:
        Get.toNamed(Routes.welcome);
        break;
      case 1:
        Get.toNamed(Routes.auth);
        break;
      case 2:
        Get.toNamed(Routes.calendar);
        break;
      case 3:
        Get.toNamed(Routes.duty);
        break;
      default:
        Get.toNamed(Routes.my);
    }
  }
}
