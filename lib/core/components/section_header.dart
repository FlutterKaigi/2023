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
  static const double _blurRadius = 20;

  /// The text to display.
  final String text;

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      // NOTE: ブラーのぼかし範囲を考慮してオフセットを設定する
      offset: const Offset(-SectionHeader._blurRadius, 0),
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          // NOTE: bounds から取得するとグラデーションが想定どおりかからないため、テキストサイズを別途取得する
          final textSize = _getTextSize(maxWidth: bounds.width);
          return GradientConstant.accent.primary.createShader(
            Rect.fromLTWH(0, 0, textSize.width, textSize.height),
          );
        },
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
    );
  }

  /// 描画するテキストのサイズを取得する
  Size _getTextSize({
    required double maxWidth,
  }) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: style,
      ),
      textDirection: TextDirection.ltr,
    )..layout(
        maxWidth: maxWidth,
      );
    return textPainter.size;
  }
}
