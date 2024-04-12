import 'package:flutter/material.dart';
import 'package:flutter_web_test/core/constants/const_texts.dart';

import '../../core/constants/const_colors.dart';


class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        ConstText.footerText,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: ConstColors.whiteSecondary,
        ),
      ),
    );
  }
}
