import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Status/Candidate/candidate.controller.dart';
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
            Text(controller.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.center),
            SizedBox(height: size.height * 0.08),
            RoundedImageTextButton(
              text: controller.student,
              fontSize: 16.0,
              image: "assets/images/c1.png",
              onTap: () {
                controller.index(0);
                controller.navigateToSignUpRoute();
              },
            ),
            RoundedImageTextButton(
              text: controller.preprer,
              fontSize: 16.0,
              image: "assets/images/c2.png",
              onTap: () {
                controller.index(1);
                controller.navigateToSignUpRoute();
              },
            ),
            RoundedImageTextButton(
              text: controller.pharmaciste,
              fontSize: 16.0,
              image: "assets/images/c3.png",
              onTap: () {
                controller.index(2);
                controller.navigateToSignUpRoute();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
