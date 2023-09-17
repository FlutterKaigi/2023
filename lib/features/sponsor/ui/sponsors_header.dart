import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

final class SponsorsHeader extends StatelessWidget {
  const SponsorsHeader({
    required this.style,
    super.key,
  });

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return SectionHeader.leftAlignment(
      text: 'Sponsors',
      style: style,
      gradient: GradientConstant.accent.primary,
    );
  }
}
