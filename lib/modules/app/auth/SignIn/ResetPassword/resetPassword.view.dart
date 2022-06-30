import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:flutter_application_1/shared/widgets/field/rounded_input_field.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/modules/app/auth/SignIn/ResetPassword/resetPassword.controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
            child: SafeArea(
      child: SingleChildScrollView(
          child: Center(
              child: Column(children: <Widget>[
        SizedBox(height: size.height * 0.05),
        const Text(
          "Mettre votre mot de passe svp:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
        ),
        SizedBox(height: size.height * 0.05),
        RoundedInputField(
          textEditingController: controller.passwordController,
          icon: Icons.key,
          hintText: "password*",
          onChanged: (value) {},
        ),
        RoundedInputField(
          textEditingController: controller.verificationController,
          icon: Icons.key,
          hintText: "Encore une fois*",
          onChanged: (value) {},
        ),
        Obx(() => controller.errorMessage.value.isNotEmpty
            ? Text(
                controller.errorMessage.value,
                style: const TextStyle(color: Colors.red),
              )
            : const SizedBox()),
        RoundedButton(
          text: "Enregistrez",
          onTap: () => controller.validateForm(),
        ),
      ]))),
    )));
  }
}
