import 'dart:math';

import 'package:confwebsite2023/components/flutter_kaigi_logo.dart';
import 'package:confwebsite2023/components/header/header_item_button_data.dart';
import 'package:confwebsite2023/components/header/header_widget.dart';
import 'package:confwebsite2023/components/responsive_widget.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/hero_section/ui/hero_section.dart';
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
      appBar: HeaderBar(
        items: items,
        onTitleTap: () async => scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 750),
          curve: Curves.easeOutCirc,
        ),
      ),
      body: _MainPageBody(
        scrollController: scrollController,
        staffSectionKey: sectionKeys.staff,
      ),
    );
  }
}

class _MainPageBody extends StatelessWidget {
  const _MainPageBody({
    required this.scrollController,
    required this.staffSectionKey,
  });

  final ScrollController scrollController;
  final GlobalKey<State<StatefulWidget>> staffSectionKey;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final largeScreenSize = ResponsiveWidget.largeScreenSize.toDouble();
    final topSectionLogo = FittedBox(
      child: Column(
        children: [
          const FlutterKaigiLogo(
            style: FlutterKaigiLogoStyle.markOnly,
            size: 180,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'FlutterKaigi 2023',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 64,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ],
      ),
    );
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 30),
          SizedBox(
            width: max(16, largeScreenSize + ((width - largeScreenSize) / 2)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                topSectionLogo,
                StaffSection(
                  key: staffSectionKey,
                ),
              ],
            ),

          ),
          const Footer(),
        ],
      ),
    );
  }
}
