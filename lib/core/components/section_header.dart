import 'package:flutter/material.dart';

/// A section header with a gradient.
final class SectionHeader extends StatelessWidget {
  const SectionHeader.leftAlignment({
    required this.text,
    required this.style,
    required this.gradient,
    super.key,
  }) : isTranslate = true;

  const SectionHeader.centerAlignment({
    required this.text,
    required this.style,
    required this.gradient,
    super.key,
  }) : isTranslate = false;

  /// ブラーのぼかし範囲
  static const double _blurRadius = 20;

  final bool isTranslate;

  /// The text to display.
  final String text;

  final TextStyle style;

  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    final component = Align(
      alignment: Alignment.centerLeft,
      child: RepaintBoundary(
        child: ShaderMask(
          shaderCallback: gradient.createShader,
          blendMode: BlendMode.srcIn,
          child: Padding(
            // NOTE: Text Widget の描画範囲から外れて文字やブラーが見切れてしまうため、現状は左右に余白を設けている
            padding: const EdgeInsets.all(_blurRadius),
            child: Text(
              text,
              style: style.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );

    if (isTranslate) {
      return Transform.translate(
        // NOTE: ブラーのぼかし範囲を考慮してオフセットを設定する
        offset: const Offset(-SectionHeader._blurRadius, 0),
        child: component,
      );
    }

    return component;
  }
}
