import 'package:flutter/material.dart';

/// ブラーのぼかし範囲
const double _blurRadius = 20;

/// A section header with a gradient.
class SectionHeader extends StatelessWidget {
  const SectionHeader({required this.text, super.key});

  /// The text to display.
  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      // TODO: #33 がマージされ次第置き換える
      shaderCallback: (Rect bounds) => const LinearGradient(
        colors: [
          Color(0xFFFF57DD),
          Color(0xFF56C2FF),
        ],
      ).createShader(bounds),
      child: Container(
        // FIXME: Text Widget の描画範囲から外れて文字やブラーが見切れてしまうため、現状は左右に余白を設けている
        margin: const EdgeInsets.only(left: _blurRadius, right: _blurRadius),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 80,
            fontStyle: FontStyle.italic,
            // TODO: Issue #32 が解決され次第 Font を利用する
            // fontFamily: 'Poppins', を追加
            shadows: [
              Shadow(
                color: Color(0x40FF57DD),
                blurRadius: _blurRadius,
                offset: Offset(0, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
