import 'package:flutter/material.dart';



ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    // ignore: deprecated_member_use
    background: Colors.white,
    primary: Colors.black,
    secondary: Colors.grey.shade500,
    tertiary: Colors.green.shade400

  )
);
ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    // ignore: deprecated_member_use
    background: Colors.black,
    primary: Colors.white,
    secondary: Colors.grey.shade500,
    tertiary: Colors.green.shade800

  )
);
