import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

final class SponsorsHeader extends StatelessWidget {
  const SponsorsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const text = 'Sponsors';
    final gradient = GradientConstant.accent.primary;
    return ResponsiveWidget(
      largeWidget: SectionHeader.leftAlignment(
        text: text,
        style: AppTextStyle.pcHeading1,
        gradient: gradient,
      ),
      smallWidget: SectionHeader.leftAlignment(
        text: text,
        style: AppTextStyle.spHeading1,
        gradient: gradient,
      ),
    );
  }
}
