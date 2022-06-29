import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Email/email.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:flutter_application_1/shared/widgets/field/rounded_input_field.dart';
import 'package:get/get.dart';

class EmailView extends GetView<EmailController> {
  const EmailView({Key? key}) : super(key: key);
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
          textEditingController: controller.textEditingController,
          icon: Icons.mail,
          hintText: "Adresse mail*",
          onChanged: (value) {},
        ),
        Obx(() => controller.errorMessage.isNotEmpty
            ? Text(
                controller.errorMessage.value,
                style: const TextStyle(color: Colors.red),
              )
            : const SizedBox()),
        RoundedButton(
          text: "Vérifier",
          onTap: () => controller.validateForm(),
        ),
        RoundedButton(
          text: "Précédent",
          onTap: () => controller.navigateToSmsVerification(),
        ),
      ]))),
    )));
  }
}
