import 'package:flutter/material.dart';

enum SectionHeaderAlignment {
  left,
  center,
}

/// A section header with a gradient.
final class SectionHeader extends StatelessWidget {
  const SectionHeader.leftAlignment({
    required this.text,
    required this.style,
    required this.gradient,
    super.key,
  }) : _alignment = SectionHeaderAlignment.left;

  const SectionHeader.centerAlignment({
    required this.text,
    required this.style,
    required this.gradient,
    super.key,
  }) : _alignment = SectionHeaderAlignment.center;

  /// ブラーのぼかし範囲
  static const double _blurRadius = 20;

  final SectionHeaderAlignment _alignment;

  /// The text to display.
  final String text;

  final TextStyle style;

  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    final view = WidgetsBinding.instance.platformDispatcher.views.first;
    final size = view.physicalSize;
    final component = RepaintBoundary(
      child: ShaderMask(
        shaderCallback: gradient.createShader,
        blendMode: BlendMode.srcIn,
        child: Padding(
          // NOTE: Text Widget の描画範囲から外れて文字やブラーが見切れてしまうため、現状は左右に余白を設けている
          padding: const EdgeInsets.all(_blurRadius),
          child: SizedBox(
            width: size.width,
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

    switch (_alignment) {
      case SectionHeaderAlignment.left:
        return Transform.translate(
          // NOTE: ブラーのぼかし範囲を考慮してオフセットを設定する
          offset: const Offset(-SectionHeader._blurRadius, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: component,
          ),
        );
      case SectionHeaderAlignment.center:
        return Align(
          child: component,
        );
    }
  }
}
