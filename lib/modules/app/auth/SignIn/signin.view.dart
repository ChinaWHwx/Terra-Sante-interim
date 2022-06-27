import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/SignIn/signin.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:flutter_application_1/shared/widgets/field/rounded_input_field.dart';
import 'package:flutter_application_1/shared/widgets/field/rounded_password_field.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: controller.obx(
          (state) => Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: size.height * 0.15),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  height: size.height * 0.28465,
                ),
                RoundedInputField(
                  textEditingController: controller.emailEditingController,
                  hintText: "votre mail",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  textEditingController: controller.passwordEditingController,
                  isVisible: controller.isVisible,
                  toggleVisibility: () => controller.toggleIsVisible(),
                  onChanged: (value) {},
                ),
                RoundedButton(
                    text: "Se connecter", onTap: () => controller.loginUser()),
                TextButton(
                    onPressed: () => controller.navigateToForgetPassword(),
                    child: const Text('Mot de passe oublié',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Colors.black,
                        )))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
