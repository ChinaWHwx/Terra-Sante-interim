import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:get/get.dart';
import 'auth.controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: size.height * 0.05),
              Text(
                controller.welcome,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              Image.asset(
                "assets/images/logo.png",
                height: size.height * 0.35,
              ),
              RoundedButton(
                  text: controller.candidate,
                  //onTap: () => controller.navigateToHomePage()),
                  onTap: () => controller.navigateTest()),
              RoundedButton(
                  text: controller.recruiter,
                  onTap: () => controller.navigateToRecruiter()),
              TextButton(
                  onPressed: () => controller.navigateToSignIn(),
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
