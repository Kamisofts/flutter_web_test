import 'package:flutter/material.dart';
import 'package:flutter_web_test/core/constants/const_colors.dart';

import '../../core/constants/const_styles.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "KF",
        style:ConstStyles.logoTextStyle,


      ),
    );
  }
}
