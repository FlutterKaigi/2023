import 'dart:math';

import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/header/data/header_item_button_data.dart';
import 'package:confwebsite2023/features/header/ui/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:js/js_util.dart' as js_util;

final class SponsorPage extends HookWidget {
  const SponsorPage({super.key});

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
    final horizontal = max<double>(16, (width - largeScreenSize) / 4.0);
    final padding = EdgeInsets.symmetric(
      horizontal: horizontal,
    );

    js_util.callMethod<void>(js_util.globalThis, '_show', []);

    return Stack(
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
        CustomScrollView(
          controller: scrollController,
          slivers: [
            _Sliver(
              padding: padding,
              child: HeaderBar(
                items: items,
                onTitleTap: () async => scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeOutCirc,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_30,
            ),
            _Sliver(
              padding: padding,
              // TODO: スポンサー詳細の内容を実装
              child: const SizedBox(),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_200,
            ),
            const SliverToBoxAdapter(
              child: Footer(),
            ),
          ],
        ),
      ],
    );
  }
}

class _Sliver extends StatelessWidget {
  const _Sliver({
    required this.child,
    required this.padding,
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding,
      sliver: SliverToBoxAdapter(
        child: child,
      ),
    );
  }
}
