import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/EmailVerification/emailverification.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:flutter_application_1/shared/widgets/field/rounded_input_field.dart';
import 'package:get/get.dart';

class EmailVerificationView extends GetView<EmailVerificationController> {
  const EmailVerificationView({Key? key}) : super(key: key);
  get top => null;

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
        Text(
          controller.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
        ),
        SizedBox(height: size.height * 0.05),
        RoundedInputField(
          icon: Icons.code,
          hintText: "Code de Mail*",
          onChanged: (value) {},
        ),
        RoundedButton(
          text: controller.saisir,
          onTap: () => controller.navigateToPosition(),
        ),
        RoundedButton(
          text: controller.rentrer,
          onTap: () => controller.navigateToEmail(),
        ),
      ]))),
    )));
  }
}
