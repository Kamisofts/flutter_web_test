import 'package:flutter/material.dart';

import '../../core/constants/const_styles.dart';

class GradientText extends StatelessWidget {
  final String text;

  const GradientText(this.text,{ super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Colors.blue,
          Colors.purple,
          Colors.red,
        ],
      ).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: ConstStyles.headerTextStyle.copyWith(fontSize: 40),),
    );
  }
}
