import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

/// A section header with a gradient.
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    required this.text,
    required this.style,
    super.key,
  });

  /// ブラーのぼかし範囲
  static const double blurRadius = 20;

  /// The text to display.
  final String text;

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) =>
          GradientConstant.accent.primary.createShader(bounds),
      child: Padding(
        // NOTE: Text Widget の描画範囲から外れて文字やブラーが見切れてしまうため、現状は左右に余白を設けている
        padding: const EdgeInsets.all(blurRadius),
        child: Text(
          text,
          style: style.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
