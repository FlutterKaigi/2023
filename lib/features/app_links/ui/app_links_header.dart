import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme/app_text_style.dart';
import 'package:confwebsite2023/core/theme/gradient.dart';
import 'package:flutter/material.dart';

final class AppLinksHeader extends StatelessWidget {
  const AppLinksHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const text = 'Application';
    final gradient = GradientConstant.accent.secondary;
    return ResponsiveWidget(
      largeWidget: SectionHeader.centerAlignment(
        text: text,
        style: AppTextStyle.pcHeading2,
        gradient: gradient,
      ),
      smallWidget: SectionHeader.centerAlignment(
        text: text,
        style: AppTextStyle.spHeading2,
        gradient: gradient,
      ),
    );
  }
}
