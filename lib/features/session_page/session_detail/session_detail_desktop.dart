import 'dart:math';

import 'package:confwebsite2023/app/home_page.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/components/social_share.dart';
import 'package:confwebsite2023/core/components/time_table.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/header/data/header_item_button_data.dart';
import 'package:confwebsite2023/features/header/ui/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
        onPressed: () async {
          Navigator.pop(context);
        },
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
    final gradient = GradientConstant.accent.primary;
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
              child: SectionHeader.leftAlignment(
                //TODO SessionかSponsor Sessionの引数を追記する。
                text: 'Sessions',
                gradient: gradient,
                style: AppTextStyle.pcHeading1,
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_80,
            ),
            _Sliver(
              padding: padding,
              child: SocialShare(
                //TODO リンクをコピーする処理を記載する
                onCopyUrlPressed: () {},
                //TODO ツイートできるする処理を記載する。
                onTweetPressed: () {},
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
                title: 'Dartのこれから',
                userName: '岡山達哉',
                image:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Shoyu_ramen%2C_at_Kasukabe_Station_%282014.05.05%29_1.jpg/260px-Shoyu_ramen%2C_at_Kasukabe_Station_%282014.05.05%29_1.jpg',
                contents:
                    '2021 年、Dart 2.12 で Null safety がデフォルトで有効になり、とても快適に開発できるようになってきました。\n\n'
                    'Null safety 以降もさまざまな機能が追加され、Dart はまだまだ進化を続けています。\n\n'
                    'このセッションでは、近年の進化の振り返りを簡単にした後、Dart の進化プロセスの紹介をして、これから Dart がどんな進化をしていくのかをできる限り詳しく紹介します。\n\n'
                    'トーク内容\n\n'
                    '01 近年、どのような進化を遂げてきたか\n'
                    '02 Dart の進化プロセス\n'
                    '03 仕様化を進めている新機能\n'
                    '  ・Views on an object without a wrapper object\n'
                    '  ・Static Metaprogramming\n'
                    '  ・Sound declaration-site variance\n'
                    '  ・Patterns and related features\n'
                    '04 おわりに\n\n\n'
                    '対象者\n'
                    '・Dart の近年追加された機能について振り返りたい方\n'
                    '・Dart の進化プロセスに興味のある方\n'
                    '・Dart のこれからに興味のある方\n',
                time: '2023年11月10日：11:10~11:15(40分)',
                trackName: 'Track 1',
                twitter: 'blendthink',
                isSponsor: true,
                sponsorImage:
                    'https://yumemi.co.jp/grow-with-new-logo/img/common/logo_new.svg',
                sponsorName: '株式会社ゆめみ',
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_10,
            ),
            _Sliver(
              padding: padding,
              child: SocialShare(
                //TODO リンクをコピーする処理を記載する
                onCopyUrlPressed: () {},
                //TODO ツイートできるする処理を記載する。
                onTweetPressed: () {},
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
