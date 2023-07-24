import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class StaffHeader extends StatelessWidget {
  const StaffHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.translate(
          offset: const Offset(-SectionHeader.blurRadius, 0),
          child: ResponsiveWidget(
            largeWidget: SectionHeader(
              text: 'Staff',
              style: AppTextStyle.pcHeading1,
            ),
            smallWidget: SectionHeader(
              text: 'Staff',
              style: AppTextStyle.spHeading1,
            ),
          ),
        ),
      ],
    );
  }
}
