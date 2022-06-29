import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/SignIn/signin.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:flutter_application_1/shared/widgets/field/rounded_input_field.dart';
import 'package:flutter_application_1/shared/widgets/field/rounded_password_field.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: size.height * 0.15),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.28465,
              ),
              RoundedInputField(
                hintText: "votre mail",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                isVisible: controller.isVisible,
                toggleVisibility: () => controller.toggleIsVisible(),
                onChanged: (value) {},
              ),
              RoundedButton(
                  text: controller.login,
                  onTap: () => controller.navigateToAuth()),
              TextButton(
                  onPressed: () => controller.navigateToForgetPassword(),
                  child: Text(controller.check,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                        color: Colors.black,
                      )))
            ],
          ),
        ),
      ),
    ));
  }
}
