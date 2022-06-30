import 'package:get/get.dart';
import 'package:flutter_application_1/routes/app.pages.dart';

class DutyController extends GetxController {
  final String duty = 'Mission';
  int recent = 1;
  int now = 1;
  int future = 1;
  var count = 0.obs;
  navigateToAuth() {
    Get.toNamed(Routes.homepageRoute);
  }
}
