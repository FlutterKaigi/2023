import 'package:confwebsite2023/components/responsive_widget.dart';
import 'package:confwebsite2023/features/hero_section/ui/hero_section_desktop.dart';
import 'package:confwebsite2023/features/hero_section/ui/hero_section_mobile.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if(wantKeepAlive) {
      updateKeepAlive();
    }
    return const ResponsiveWidget(
      largeWidget: HeroSectionDesktop(),
      smallWidget: HeroSectionMobile(),
    );
  }
}
