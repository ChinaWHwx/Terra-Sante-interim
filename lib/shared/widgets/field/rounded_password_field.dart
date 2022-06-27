import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/utils/constants.utils.dart';
import 'package:flutter_application_1/shared/widgets/container/text_field_container.dart';
import 'package:get/get.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final Rx<bool> isVisible;
  final Function toggleVisibility;
  final TextEditingController? textEditingController;

  const RoundedPasswordField(
      {Key? key,
      required this.onChanged,
      required this.isVisible,
      required this.toggleVisibility,
      this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Obx(
        () => TextField(
          controller: textEditingController,
          obscureText: isVisible.value,
          onChanged: onChanged,
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
            hintText: "mot de passe",
            border: InputBorder.none,
            icon: const Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: GestureDetector(
              onTap: () => toggleVisibility(),
              child: isVisible.value
                  ? const Icon(
                      Icons.visibility_off,
                      color: kPrimaryColor,
                    )
                  : const Icon(
                      Icons.visibility,
                      color: kPrimaryColor,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
