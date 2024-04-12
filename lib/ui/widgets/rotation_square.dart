import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_test/core/constants/const_colors.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;

import '../../core/constants/const_size.dart';
import '../widgets/custom_painter.dart';
import '../widgets/gradient_text.dart';

class RotationSquare extends StatefulWidget {
  final Widget child;

  const RotationSquare({super.key, required this.child});

  @override
  State<RotationSquare> createState() => _RotationSquareState();
}

class _RotationSquareState extends State<RotationSquare>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    animate();
  }

  void animate() {
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
    _animation = Tween<double>(begin: 0, end: 2 * math.pi).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: _animation.value,
                child: child,
              );
            },
            child: SizedBox(
              height:
                  MediaQuery.sizeOf(context).width >= ConstSize.kMinDesktopWidth
                      ? MediaQuery.sizeOf(context).width / 3.5
                      : MediaQuery.sizeOf(context).width / 1.8,
              width:
                  MediaQuery.sizeOf(context).width >= ConstSize.kMinDesktopWidth
                      ? MediaQuery.sizeOf(context).width / 3.5
                      : MediaQuery.sizeOf(context).width / 1.8,
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).width >=
                            ConstSize.kMinDesktopWidth
                        ? MediaQuery.sizeOf(context).width / 3.5
                        : MediaQuery.sizeOf(context).width / 1.8,
                    width: MediaQuery.sizeOf(context).width >=
                            ConstSize.kMinDesktopWidth
                        ? MediaQuery.sizeOf(context).width / 3.5
                        : MediaQuery.sizeOf(context).width / 1.8,
                    child: CustomPaint(
                      painter: GradientBorderPainter(),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin:
                          EdgeInsets.all(MediaQuery.sizeOf(context).width / 50),
                      height: MediaQuery.sizeOf(context).width >=
                              ConstSize.kMinDesktopWidth
                          ? MediaQuery.sizeOf(context).width / 3.4
                          : MediaQuery.sizeOf(context).width / 1.6,
                      width: MediaQuery.sizeOf(context).width >=
                              ConstSize.kMinDesktopWidth
                          ? MediaQuery.sizeOf(context).width / 3.4
                          : MediaQuery.sizeOf(context).width / 1.6,
                      decoration: BoxDecoration(
                          color: ConstColors.kScaffoldBG,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Center(
          child: widget.child,
        ),
      ],
    );
  }
}
