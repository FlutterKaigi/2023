import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme/app_text_style.dart';
import 'package:confwebsite2023/core/theme/gradient.dart';
import 'package:flutter/material.dart';

final class SessionsSectionHeader extends StatelessWidget {
  const SessionsSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const headerTitle = 'Sessions';
    final headerGradient = GradientConstant.accent.primary;
    return ResponsiveWidget(
      largeWidget: SectionHeader.leftAlignment(
        text: headerTitle,
        style: AppTextStyle.pcHeading1,
        gradient: headerGradient,
      ),
      smallWidget: SectionHeader.leftAlignment(
        text: headerTitle,
        style: AppTextStyle.spHeading1,
        gradient: headerGradient,
      ),
    );
  }
}
