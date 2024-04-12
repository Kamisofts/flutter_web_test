
import 'package:flutter/material.dart';

class GradientBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const borderRadius = 50.0;
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(borderRadius));

    // Gradient for border
    const borderGradient = LinearGradient(
      colors: [Colors.red, Colors.purple, Colors.blue, Colors.green],
      stops: [0.0, 0.33, 0.66, 1.0],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    // Paint for the gradient border
    final borderPaint = Paint()
      ..shader = borderGradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    // Shadow Paint
    final shadowPaint = Paint()
      ..shader = borderGradient.createShader(rect)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 30);

    // Draw shadow
    canvas.drawRRect(rrect.shift(const Offset(4, 4)), shadowPaint);

    // Draw border
    canvas.drawRRect(rrect, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}