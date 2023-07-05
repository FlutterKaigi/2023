import 'dart:math';

import 'package:confwebsite2023/components/header/header_item_button_data.dart';
import 'package:confwebsite2023/components/header/header_widget.dart';
import 'package:confwebsite2023/components/responsive_widget.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/hero_section/ui/hero_section.dart';
import 'package:confwebsite2023/features/staff/ui/staff_section.dart';
import 'package:confwebsite2023/theme/baseline_color_scheme.dart';
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

class _MainPageBody extends StatefulWidget {
  const _MainPageBody({
    required this.scrollController,
    required this.staffSectionKey,
    required this.items,
  });

  final ScrollController scrollController;
  final GlobalKey<State<StatefulWidget>> staffSectionKey;
  final List<HeaderItemButtonData> items;

  @override
  State<_MainPageBody> createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<_MainPageBody>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if(wantKeepAlive) {
      updateKeepAlive();
    }
    final width = MediaQuery.of(context).size.width;
    final largeScreenSize = ResponsiveWidget.largeScreenSize.toDouble();

    return SingleChildScrollView(
      controller: widget.scrollController,
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
                items: widget.items,
                onTitleTap: () async => widget.scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeOutCirc,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: min(
                  width - (16 * 2),
                  largeScreenSize + ((width - largeScreenSize) / 2),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const HeroSection(),
                    const SizedBox(height: 80),
                    StaffSection(
                      key: widget.staffSectionKey,
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
