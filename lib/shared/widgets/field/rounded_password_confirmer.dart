import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/utils/constants.utils.dart';
import 'package:flutter_application_1/shared/widgets/container/text_field_container.dart';

class RoundedPasswordConfirmer extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController? textEditingController;

  const RoundedPasswordConfirmer({
    Key? key,
    required this.onChanged,
    this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: textEditingController,
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: const InputDecoration(
          hintText: "Confirmer mot de passe",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
