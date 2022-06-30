import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/utils/constants.utils.dart';
import 'package:flutter_application_1/shared/widgets/container/text_field_container.dart';
import 'package:get/get.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextEditingController? textEditingController;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
    this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      key: null,
      child: TextFormField(
        controller: textEditingController,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        validator: (text) => text != null && GetUtils.isEmail(text)
            ? null
            : 'C\'est pas une addresse correcte',
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
