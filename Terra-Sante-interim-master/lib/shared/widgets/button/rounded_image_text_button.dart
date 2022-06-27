import 'package:flutter/material.dart';

class RoundedImageTextButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final String image;
  final void Function() onTap;
  final Color textColor;

  const RoundedImageTextButton({
    Key? key,
    required this.text,
    required this.fontSize,
    this.textColor = Colors.black,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white.withAlpha(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: size.width * 0.20,
              height: size.height * 0.15,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Text(
                text,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
