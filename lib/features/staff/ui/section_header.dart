import 'package:flutter/material.dart';

/// A section header with a gradient.
class SectionHeader extends StatelessWidget {
  const SectionHeader({required this.text, super.key});

  /// The text to display.
  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) => const LinearGradient(
        colors: [
          Color(0xFFFF57DD),
          Color(0xFF56C2FF),
        ],
      ).createShader(bounds),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 80,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
