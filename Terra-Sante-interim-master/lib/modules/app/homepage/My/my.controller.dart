import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  final String people = 'Mon profil';
  navigateToHomePage() {
    Get.toNamed(Routes.homepageRoute);
  }

  navigateToWelcome() {
    Get.toNamed(Routes.welcomeRoute);
  }

  navigateToMy() {
    Get.toNamed(Routes.myRoute);
  }

  navigateToDocument() {
    Get.toNamed(Routes.documentRoute);
  }

  navigateToExperience() {
    Get.toNamed(Routes.experienceRoute);
  }

  navigateToAbility() {
    Get.toNamed(Routes.abilityRoute);
  }

  navigateToLogout() {
    Get.toNamed(Routes.logoutRoute);
  }

  navigateToSignIn() {
    Get.toNamed(Routes.signInRoute);
  }

  navigateToProfile() {
    Get.toNamed(Routes.profileRoute);
  }

  navigate(int i) {
    switch (i) {
      case 0:
        Get.toNamed(Routes.profile);
        break;
      case 1:
        Get.toNamed(Routes.auth);
        break;
      case 2:
        Get.toNamed(Routes.calendar);
        break;
      case 3:
        Get.toNamed(Routes.auth);
        break;
      default:
        Get.toNamed(Routes.menu);
    }
  }
}
