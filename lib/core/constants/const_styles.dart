import 'package:flutter/material.dart';
import 'package:flutter_web_test/core/constants/const_colors.dart';

class ConstStyles {
  static BoxDecoration kHeaderDecoration = BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Colors.transparent,
        ConstColors.bgLight1,
      ],
    ),
    borderRadius: BorderRadius.circular(100),
  );

  static const TextStyle headerTextStyle = TextStyle(
    fontSize: 24,
    height: 1.5,
    fontWeight: FontWeight.bold,
    color: ConstColors.whitePrimary,
  );
  static const TextStyle logoTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    color: ConstColors.yellowSecondary,
  );
  static const TextStyle hoverTextStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    color: ConstColors.yellowSecondary,
  );
}
