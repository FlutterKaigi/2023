import 'dart:math';

import 'package:confwebsite2023/app/home_page.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/components/time_table.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/header/data/header_item_button_data.dart';
import 'package:confwebsite2023/features/header/ui/header_widget.dart';
import 'package:confwebsite2023/features/session_page/session_detail/session_detail_button_dark.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionDetailDesktop extends HookWidget {
  const SessionDetailDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <HeaderItemButtonData>[
      HeaderItemButtonData(
        title: 'Staff',
        onPressed: () async {
          await Navigator.push<void>(
            context,
            MaterialPageRoute(builder: (context) => const MainPage()),
          );
        },
      ),
      HeaderItemButtonData(
        title: 'Session',
        onPressed: () async {},
      ),
    ];

    final scrollController = useScrollController();
    return Scaffold(
      backgroundColor: baselineColorScheme.ref.secondary.secondary10,
      body: _MainPageBody(
        scrollController: scrollController,
        items: items,
      ),
    );
  }
}

class _MainPageBody extends StatelessWidget {
  const _MainPageBody({
    required this.scrollController,
    required this.items,
  });

  final ScrollController scrollController;
  final List<HeaderItemButtonData> items;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final largeScreenSize = ResponsiveWidget.largeScreenSize.toDouble();
    final horizontal = max<double>(16, (width - largeScreenSize) / 4.0);
    final padding = EdgeInsets.symmetric(horizontal: horizontal);
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
            _Sliver(
              padding: padding,
              child: Spaces.vertical_40,
            ),
            _Sliver(
              padding: padding,
              child: SectionHeader(
                //TODO 引数として、SessionかSponsor Sessionかを入れる必要がありそう
                text: 'Sessions',
                style: GoogleFonts.poppins(
                  fontSize: 48,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                ),
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_80,
            ),
            _Sliver(
              padding: padding,
              child: const SessionDetailButton(
                twitterUrl: '',
                url: '',
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_20,
            ),
            _Sliver(
              padding: padding,
              child: const ProposalDeskTop(
                sessionName: 'Session 1-1',
                title: '大きいタイトル',
                userName: 'いせりゅー',
                image:
                    'https://www.yamaki.co.jp/recipe/wp-content/uploads/0179.jpg',
                contents: '説明文',
                trackName: 'Track 1',
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_10,
            ),
            _Sliver(
              padding: padding,
              child: const SessionDetailButton(
                twitterUrl: '',
                url: '',
              ),
            ),
            _Sliver(
              padding: padding,
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
