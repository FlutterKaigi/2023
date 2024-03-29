import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

/// アナウンスセクションのヘッダー
final class AnnouncementSectionHeader extends StatelessWidget {
  const AnnouncementSectionHeader({super.key});

  static const _title = 'Announcement';

  @override
  Widget build(BuildContext context) {
    final gradient = GradientConstant.accent.primary;
    return ResponsiveWidget(
      largeWidget: SectionHeader.leftAlignment(
        text: _title,
        style: AppTextStyle.pcHeading1,
        gradient: gradient,
      ),
      smallWidget: SectionHeader.leftAlignment(
        text: _title,
        style: AppTextStyle.spHeading1,
        gradient: gradient,
      ),
    );
  }
}
