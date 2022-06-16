import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/My/ability/ability.controller.dart';
import 'package:multiselect/multiselect.dart';
import 'package:flutter_application_1/shared/widgets/button/rounded_button.dart';
import 'package:get/get.dart';

class AbilityView extends GetView<AbilityController> {
  const AbilityView({Key? key}) : super(key: key);

  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes Compétence"),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            const Text(
              "Les langues: ",
              textAlign: TextAlign.start,
            ),
            DropDownMultiSelect(
              options: controller.dropdownText,
              whenEmpty: 'Select State Management Library',
              onChanged: (value) {
                controller.selectedDropdownText.value = value;
                controller.selectedOption.value = "";
                controller.selectedDropdownText.value.forEach((element) {
                  controller.selectedOption.value =
                      controller.selectedOption.value + " " + element;
                });
              },
              selectedValues: controller.selectedDropdownText.value,
            ),
            const Text(
              "Les logiciel: ",
              textAlign: TextAlign.start,
            ),
            DropDownMultiSelect(
              options: controller.options,
              whenEmpty: 'Select State Management Library',
              onChanged: (value) {
                controller.selectedOptionList.value = value;
                controller.selectedOption2.value = "";
                controller.selectedOptionList.value.forEach((element) {
                  controller.selectedOption2.value =
                      controller.selectedOption2.value + " " + element;
                });
              },
              selectedValues: controller.selectedOptionList.value,
            ),
            const Text(
              "Expertise:",
              textAlign: TextAlign.start,
            ),
            TextField(
              controller: controller.textEditingController,
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => controller.errorMessage.isNotEmpty
                ? Text(
                    controller.errorMessage.value,
                    style: const TextStyle(color: Colors.red),
                  )
                : const SizedBox()),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Enregistrez",
              onTap: () => controller.validateForm(),
            )
          ]))),
    );
  }
}
