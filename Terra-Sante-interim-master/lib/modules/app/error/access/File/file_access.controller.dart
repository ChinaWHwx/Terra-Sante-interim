import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class FileAccessController extends GetxController {
  navigateToSignInPage() {
    Get.toNamed(Routes.signInRoute);
  }

  navigateToSetting() {
    Get.toNamed(Routes.settingRoute);
  }
}
