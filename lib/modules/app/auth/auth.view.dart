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
              const Text(
                'Bienvenue à Terra Santé',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              Image.asset(
                "assets/images/logo.png",
                height: size.height * 0.35,
              ),
              RoundedButton(
                  text: 'Je voudrais travailler',
                  onTap: () => controller.navigateToCandidate()),
              //onTap: () => controller.navigateTest()),
              RoundedButton(
                  text: 'Je souhaite recruter',
                  onTap: () => controller.navigateToRecruiter()),
              TextButton(
                  onPressed: () => controller.navigateToSignIn(),
                  child: const Text('Vous avez déjà un compte? Connectez-vous',
                      style: TextStyle(
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
