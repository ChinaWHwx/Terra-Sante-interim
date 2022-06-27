import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/utils/constants.utils.dart';

class ThemeUtils {
  const ThemeUtils._();
  static const appPadding = 20.0;
  static final themeData = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontSize: 36.0,
        ),
      ));
}

class ButtonStyles {
  static ButtonStyle elevatedButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
    foregroundColor: MaterialStateProperty.all(Colors.black),
  );
}
