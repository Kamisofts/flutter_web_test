import 'package:flutter/material.dart';
import '../../core/constants/const_styles.dart';

class HoverText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final TextStyle hoverStyle;
  final VoidCallback onTap;

  const HoverText(
      {super.key,
      required this.text,
      required this.style,
      required this.hoverStyle,
      required this.onTap});

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  final ValueNotifier<bool> _isHovering = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (PointerEvent details) => _isHovering.value = true,
        onExit: (PointerEvent details) => _isHovering.value = false,
        child: ValueListenableBuilder<bool>(
          valueListenable: _isHovering,
          builder: (context, isHovering, child) {
            return AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: isHovering ? widget.hoverStyle : widget.style,
              child: Text(widget.text),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _isHovering.dispose();
    super.dispose();
  }
}
