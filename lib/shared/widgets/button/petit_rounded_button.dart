import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/utils/constants.utils.dart';

class PetitRoundedButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final Color color, textColor;
  const PetitRoundedButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color = kPrimaryColor,
    this.textColor = Colors.black,
    Image? image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
