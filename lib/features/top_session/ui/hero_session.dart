import 'package:confwebsite2023/components/responsive_widget.dart';
import 'package:confwebsite2023/features/top_session/ui/hero_session_desktop.dart';
import 'package:confwebsite2023/features/top_session/ui/top_session_mobile.dart';
import 'package:flutter/material.dart';

class HeroSession extends StatelessWidget {
  const HeroSession({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeWidget: HeroSessionDesktop(),
      smallWidget: TopSessionMobile(),
    );
  }
}
