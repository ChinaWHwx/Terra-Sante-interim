import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/timeout/EmailVerification/emailverification_timeout.controller.dart';
import 'package:get/get.dart';

class EmailVerificationTimeOutView
    extends GetView<EmailVerificationTimeOutController> {
  const EmailVerificationTimeOutView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/clock.png",
            fit: BoxFit.fitWidth,
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.225,
              left: MediaQuery.of(context).size.width * 0.05,
              // child: const Text(
              //   "Oops!\nDélai de connexion,veuillez reconnecter!",
              //   textAlign: TextAlign.center,
              // ),
              child: const Text(
                "Oops!  \nDélai de vérification, veuillez réessayer!",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              )),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.08,
            left: MediaQuery.of(context).size.width * 0.25,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 25,
                    color: const Color(0xFF59618B).withOpacity(0.37),
                  ),
                ],
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50)),
                  child: const Text("Réessayer"),
                  onPressed: () => controller.navigateToSignInPage()),
            ),
          ),
        ],
      ),
    );
  }
}
