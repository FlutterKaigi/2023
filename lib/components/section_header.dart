import 'package:confwebsite2023/theme/gradient.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      shaderCallback: (Rect bounds) =>
          GradientConstant.accent.primary.createShader(bounds),
      child: Container(
        // FIXME: Text Widget の描画範囲から外れて文字やブラーが見切れてしまうため、現状は左右に余白を設けている
        margin: const EdgeInsets.only(left: _blurRadius, right: _blurRadius),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 80,
            fontStyle: FontStyle.italic,
            shadows: [
              const Shadow(
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
