import 'package:get/get.dart';
import 'package:flutter_application_1/routes/app.pages.dart';

class DutyController extends GetxController {
  final String duty = 'Mission';

  navigateToAuth() {
    Get.toNamed(Routes.homepageRoute);
  }
}
