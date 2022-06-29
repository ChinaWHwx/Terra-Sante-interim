import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Status/Candidate/candidate.controller.dart';
import 'package:flutter_application_1/modules/app/auth/auth.controller.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:flutter_application_1/services/signUp.service.dart';
import 'package:flutter_application_1/shared/widgets/methods/methods.shared.dart';
import 'package:get/get.dart';

class TelephoneController extends GetxController with StateMixin {
  final TextEditingController textEditingController = TextEditingController();

  final errorMessage = "".obs;
  String phoneNum = 'NONE';
  int idUser = -1;

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToStatus() {
    String type = Get.find<AuthController>().type;
    if (type == 'candidate') {
      Get.toNamed(Routes.candidateRoute);
    } else {
      Get.toNamed(Routes.recruiterRoute);
    }
  }

  navigateToSmsVerification() {
    Get.toNamed(Routes.smsVerificationRoute);
  }

  validateForm() {
    if (textEditingController.text.isEmpty) {
      errorMessage.value = "Numero de téléphone vide";
    } else if (!GetUtils.isPhoneNumber(textEditingController.text)) {
      errorMessage.value = 'Ce n\'est pas un numéro de téléphone!';
    } else {
      firstSignUp();
    }
  }

  firstSignUp() async {
    phoneNum = textEditingController.text;
    Map<String, dynamic> data = getData();
    SignUpService signUpService = Get.find();
    if (data.containsKey('error')) {
    } else {
      var response = await signUpService.addTypeStatusPhone(data);
      manageResponse(response);
    }
  }

  Map<String, dynamic> getData() {
    AuthController authController = Get.find();
    String type = authController.type;
    if (type == "candidat") {
      CandidateController candidateController = Get.find();
      String status = candidateController.status;
      return {'user_type': type, 'user_status': status, 'user_phone': phoneNum};
    }
    if (type == "recruteur") {
      return {
        'user_type': 'recruteur',
        'user_status': 'TP',
        'user_phone': '+33999999999'
      };
    }
    if (type == "etudiant") {
      return {
        'user_type': 'recruteur',
        'user_status': 'TP',
        'user_phone': '+33999999999'
      };
    }
    return {'error': 'Une erreur s\'est produite.'};
  }

  manageResponse(var response) {
    if (response.containsKey("error")) {
      showToast(response['error']);
      change(null, status: RxStatus.success());
    } else {
      if (response.containsValue("success")) {
        idUser = response['user_id'];
      }
      change(null, status: RxStatus.success());
      navigateToSmsVerification();
    }
  }
}
