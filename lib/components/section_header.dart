import 'package:confwebsite2023/theme/app_text_style.dart';
import 'package:confwebsite2023/theme/gradient.dart';
import 'package:flutter/material.dart';

/// ブラーのぼかし範囲
const double _blurRadius = 20;

/// A section header with a gradient.
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    required this.text,
    required this.fontSize,
    super.key,
  });

  /// The text to display.
  final String text;

  /// The size of glyphs (in logical pixels) to use when painting the text.
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) =>
          GradientConstant.accent.primary.createShader(bounds),
      child: _baseHeader(),
    );
  }

  Widget _baseHeader({
    Color? color,
  }) =>
      Container(
        // FIXME: Text Widget の描画範囲から外れて文字やブラーが見切れてしまうため、現状は左右に余白を設けている
        margin: const EdgeInsets.only(left: _blurRadius, right: _blurRadius),
        child: Text(
          text,
          style: AppTextStyle.pcHeading1,
        ),
      );
}
