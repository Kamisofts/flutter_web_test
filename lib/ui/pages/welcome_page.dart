import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_test/core/constants/const_colors.dart';
import 'package:flutter_web_test/ui/widgets/rotation_square.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;

import '../widgets/custom_painter.dart';
import '../widgets/gradient_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
{

  @override
  void initState() {
    super.initState();
    homePage();
  }



  void homePage() {
    Timer(const Duration(seconds: 8), () {
      context.go("/home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: ConstColors.kScaffoldBG,
        body: RotationSquare(
          child: GradientText(
            'Portfolio',
          ),
        ));
  }
}
