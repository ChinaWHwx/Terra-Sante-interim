import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Status/Candidate/candidate.controller.dart';
import 'package:flutter_application_1/modules/app/auth/auth.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_image_text_button.dart';
import 'package:get/get.dart';

class CandidateView extends GetView<CandidateController> {
  const CandidateView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: ListView(
          children: <Widget>[
            const Text('Choissiez votre status:',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.center),
            SizedBox(height: size.height * 0.08),
            RoundedImageTextButton(
              text: 'étudiant,e',
              fontSize: 16.0,
              image: "assets/images/c1.png",
              onTap: () {
                AuthController authController = Get.find();
                authController.type = "etudiant";
                controller.status = "ETD3";
                controller.navigateToSignUpRoute();
              },
            ),
            RoundedImageTextButton(
              text: 'Préparateur,trice',
              fontSize: 16.0,
              image: "assets/images/c2.png",
              onTap: () {
                controller.status = "PR";
                controller.navigateToSignUpRoute();
              },
            ),
            RoundedImageTextButton(
              text: 'Pharmacien,ne',
              fontSize: 16.0,
              image: "assets/images/c3.png",
              onTap: () {
                controller.status = "PH";
                controller.navigateToSignUpRoute();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
