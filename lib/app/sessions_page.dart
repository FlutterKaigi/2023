import 'dart:async';
import 'dart:math';

import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/header/ui/header_widget.dart';
import 'package:confwebsite2023/features/session/ui/list/sessions_caution.dart';
import 'package:confwebsite2023/features/session/ui/list/sessions_section_header.dart';
import 'package:confwebsite2023/features/session/ui/list/sessions_table.dart';
import 'package:confwebsite2023/features/session/ui/list/sessions_tracker_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:js/js_util.dart' as js_util;

class SessionsPage extends HookConsumerWidget {
  const SessionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      unawaited(
        WidgetsBinding.instance.endOfFrame.then((_) {
          js_util.callMethod<void>(js_util.globalThis, '_show', []);
        }),
      );
      return null;
    });

    return Scaffold(
      backgroundColor: baselineColorScheme.ref.secondary.secondary10,
      body: const _MainPageBody(),
      appBar: const LogoOnlyHeaderBar(),
      extendBodyBehindAppBar: true,
    );
  }
}

class _MainPageBody extends StatelessWidget {
  const _MainPageBody();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final largeScreenSize = ResponsiveWidget.largeScreenSize.toDouble();
    final horizontal = max<double>(16, (width - largeScreenSize) / 4.0);
    final padding = EdgeInsets.symmetric(
      horizontal: horizontal,
    );

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
          slivers: [
            const SliverToBoxAdapter(
              child: Spaces.vertical_80,
            ),
            SliverPadding(
              padding: padding,
              sliver: const SliverToBoxAdapter(
                child: SessionsSectionHeader(),
              ),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_80,
            ),
            SliverPadding(
              padding: padding,
              sliver: const SliverToBoxAdapter(
                child: SessionsTrackHeader(),
              ),
            ),
            SliverPadding(
              padding: padding,
              sliver: const SessionsTable(),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_80,
            ),
            SliverPadding(
              padding: padding,
              sliver: const SliverToBoxAdapter(
                child: SessionsCaution(),
              ),
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
