import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/features/hero/ui/hero_section_desktop.dart';
import 'package:confwebsite2023/features/hero/ui/hero_section_mobile.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeWidget: HeroSectionDesktop(),
      smallWidget: HeroSectionMobile(),
    );
  }
}
