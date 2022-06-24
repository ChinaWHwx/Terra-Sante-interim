import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final String welcome = 'Bienvenue à Terra Santé';
  final String candidate = 'Je voudrais travailler';
  final String recruiter = 'Je souhaite recruter';
  final String check = 'Vous avez déjà un compte? Connectez-vous';

  late String type;

  navigateToSignIn() {
    Get.toNamed(Routes.signInRoute);
  }

  navigateToCandidate() {
    type = 'candidate';
    Get.toNamed(Routes.candidateRoute);
  }

  navigateToRecruiter() {
    type = 'recruiter';
    Get.toNamed(Routes.recruiterRoute);
  }

  navigateTest() {
    Get.toNamed(Routes.sigiInTimeOutRoute);
  }

  navigateToHomePage() {
    Get.toNamed(Routes.homepage);
  }
}
