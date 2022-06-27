import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/login.model.dart';
import 'package:flutter_application_1/models/user.model.dart';
import 'package:flutter_application_1/routes/app.pages.dart';
import 'package:flutter_application_1/services/login.service.dart';
import 'package:flutter_application_1/shared/widgets/methods/methods.shared.dart';
import 'package:get/get.dart';

class SignInController extends GetxController with StateMixin {
  Rx<bool> isVisible = false.obs;
  var isLoading = false.obs;
  late User user;
  LoginService loginService = Get.find();

  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  @override //selmaaa@gmail.com
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  navigateToAuth() {
    Get.toNamed(Routes.auth);
  }

  navigateToHome() {
    Get.toNamed(Routes.homepageRoute);
  }

  navigateToForgetPassword() {
    Get.toNamed(Routes.forgetPasswordRoute);
  }

  toggleIsVisible() {
    isVisible.value = !isVisible.value;
  }

  loginUser() async {
    try {
      change(null, status: RxStatus.loading());
      Login data = getData();
      final valid = validateData(data);
      if (valid['success']) {
        var response = await loginService.getInfos(loginToJson(data));

        manageResponse(response);
      } else {
        showToast(valid['message']);
        change(null, status: RxStatus.success());
      }
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

  Login getData() {
    return Login(
      userEmail: emailEditingController.text,
      userPassword: passwordEditingController.text,
    );
  }

  validateData(Login data) {
    if (data.userEmail == '' || data.userPassword == '') {
      return {'success': false, 'message': 'Veuillez remplir tous les champs.'};
    }
    if (!GetUtils.isEmail(data.userEmail)) {
      return {'success': false, 'message': 'Email invalide.'};
    }
    if (!GetUtils.isLengthGreaterThan(data.userPassword, 4)) {
      return {'success': false, 'message': 'Mot de passe trop court.'};
    }
    return {'success': true, 'message': 'Validation réussie.'};
  }

  manageResponse(var response) {
    if (response.containsKey("error")) {
      showToast(response['error']);
      change(null, status: RxStatus.success());
    } else {
      user = User.fromJson(response);
      change(null, status: RxStatus.success());
      navigateToHome();
    }
  }
}
