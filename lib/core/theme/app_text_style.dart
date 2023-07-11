import 'dart:ui';

import 'package:confwebsite2023/core/theme/gradient.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  const AppTextStyle._();

  static final _shadowHeading1 = Shadow(
    color: GradientConstant.accent.primary.colors.first.withOpacity(0.25),
    blurRadius: 20,
    offset: const Offset(0, 2),
  );

  static final _shadowHeading2 = Shadow(
    color: GradientConstant.accent.secoundary.colors.last.withOpacity(0.25),
    blurRadius: 10,
    offset: const Offset(0, 2),
  );

  static final _baseHeading = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    height: 1.1,
  );

  static final pcHeading1 = _baseHeading.copyWith(
    fontSize: 60, // 80px * 0.75 -> 60pt
    shadows: [
      _shadowHeading1,
    ],
  );

  static final pcHeading2 = _baseHeading.copyWith(
    fontSize: 36, // 48px * 0.75-> 36pt
    shadows: [
      _shadowHeading2,
    ],
  );

  static final spHeading1 = _baseHeading.copyWith(
    fontSize: 36, // 48px * 0.75-> 36pt
    shadows: [
      _shadowHeading1,
    ],
  );

  static final spHeading2 = _baseHeading.copyWith(
    fontSize: 24, // 32px * 0.75-> 24pt
    shadows: [
      _shadowHeading2,
    ],
  );
}
