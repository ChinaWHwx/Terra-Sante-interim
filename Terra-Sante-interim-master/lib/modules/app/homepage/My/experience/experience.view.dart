import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/My/experience/experience.controller.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:get/get.dart';

class ExperienceView extends GetView<ExperienceController> {
  const ExperienceView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes expériences"),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(36),
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            SizedBox(height: size.height * 0.15),
            const Text(
              "1.Avez vous des expériences spécialistes? ",
              textAlign: TextAlign.center,
            ),
            Obx(
              () => DropdownButton(
                iconSize: 24,
                hint: const Text(
                  'Avez vous des expériences spécialistes ?',
                ),
                onChanged: (newValue) {
                  controller.setSelected(newValue);
                },
                value: controller.selected.value,
                items: controller.dropdownText
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            const Text(
              "2.Avez vous des expériences globales ? ",
              textAlign: TextAlign.start,
            ),
            Obx(
              () => DropdownButton(
                iconSize: 24,
                hint: const Text(
                  'Avez vous des expériences globales ?',
                ),
                onChanged: (newValue) {
                  controller.setSelected(newValue);
                },
                value: controller.selected.value,
                items: controller.dropdownText
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Enregistrez",
              onTap: () => controller.navigateToHomePage(),
            )
          ]))),
    );
  }
}
