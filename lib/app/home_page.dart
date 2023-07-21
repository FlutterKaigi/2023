import 'dart:math';

import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/header/data/header_item_button_data.dart';
import 'package:confwebsite2023/features/header/ui/header_widget.dart';
import 'package:confwebsite2023/features/hero/ui/hero_section.dart';
import 'package:confwebsite2023/features/news/ui/news_section.dart';
import 'package:confwebsite2023/features/session/wanted/session_wanted.dart';
import 'package:confwebsite2023/features/staff/ui/staff_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    const sectionKeys = (
      event: GlobalObjectKey('eventSectionKey'),
      session: GlobalObjectKey('sessionSectionKey'),
      sponsor: GlobalObjectKey('sponsorSectionKey'),
      staff: GlobalObjectKey('staffSectionKey'),
    );

    final items = <HeaderItemButtonData>[
      HeaderItemButtonData(
        title: 'Staff',
        onPressed: () async => Scrollable.ensureVisible(
          sectionKeys.staff.currentContext!,
          curve: Curves.easeOutCirc,
          duration: const Duration(milliseconds: 750),
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: baselineColorScheme.ref.secondary.secondary10,
      body: _MainPageBody(
        scrollController: scrollController,
        staffSectionKey: sectionKeys.staff,
        items: items,
      ),
    );
  }
}

class _MainPageBody extends StatelessWidget {
  const _MainPageBody({
    required this.scrollController,
    required this.staffSectionKey,
    required this.items,
  });

  final ScrollController scrollController;
  final GlobalKey<State<StatefulWidget>> staffSectionKey;
  final List<HeaderItemButtonData> items;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final largeScreenSize = ResponsiveWidget.largeScreenSize.toDouble();

    return SingleChildScrollView(
      controller: scrollController,
      child: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 800,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF602678),
                    Color(0x004B0082),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HeaderBar(
                items: items,
                onTitleTap: () async => scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeOutCirc,
                ),
              ),
              Spaces.vertical_30,
              SizedBox(
                width: min(
                  width - (16 * 2),
                  largeScreenSize + ((width - largeScreenSize) / 2),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const HeroSection(),
                    Spaces.vertical_80,
                    const NewsSection(),
                    const SessionWanted(),
                    Spaces.vertical_200,
                    StaffSection(
                      key: staffSectionKey,
                    ),
                  ],
                ),
              ),
              const Footer(),
            ],
          ),
        ],
      ),
    );
  }
}
