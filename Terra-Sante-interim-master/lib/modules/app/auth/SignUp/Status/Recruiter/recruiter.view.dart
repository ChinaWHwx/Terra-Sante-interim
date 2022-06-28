import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/auth/SignUp/Status/Recruiter/recruiter.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_image_text_button.dart';
import 'package:get/get.dart';

class RecruiterView extends GetView<RecruiterController> {
  const RecruiterView({Key? key}) : super(key: key);
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
              text: controller.owner,
              fontSize: 16.0,
              image: "assets/images/p1.png",
              onTap: () {
                controller.index(0);
                controller.navigateToSignUpRoute();
              },
            ),
            RoundedImageTextButton(
              text: controller.holder,
              fontSize: 16.0,
              image: "assets/images/p2.png",
              onTap: () {
                controller.index(1);
                controller.navigateToSignUpRoute();
              },
            ),
            RoundedImageTextButton(
              text: controller.responsible,
              fontSize: 16.0,
              image: "assets/images/p3.png",
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
