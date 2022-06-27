import 'dart:async';

import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    loading();
  }

  Future<void> loading() async {
    Timer(const Duration(seconds: 5), () {
      Get.offAndToNamed(Routes.homepage);
    });
  }

  // ... Criar outro método
}
