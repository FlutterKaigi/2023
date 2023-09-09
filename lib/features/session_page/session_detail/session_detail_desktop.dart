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
                //TODO SessionかSponsor Sessionの引数を追記する
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
                //TODO シェアするURLの文章を考える
                twitterUrl: '',
                //TODO ForteeのURLを追記する
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
                title: 'Flutterアプリ開発におけるモジュール分割戦略 〜dart15万行を100分割する〜',
                userName: 'いせりゅー',
                image: '',
                contents:
                    'Androidをはじめ、多くのプロジェクトではモジュール（PackageやServiceという場合も）を分割することで開発効率の向上を目指すのが、トレンドの一つです。\n\n'
                    '個人的にこの方針での開発を「マイクロモジュール開発」と（サーバーサイドにおけるマイクロサービスのようなイメージで）呼んでいます。\n\n'
                    '約一年前から始まった弊プロジェクトでは、その手法をflutterアプリに当てはめようとしましたが、いくつかの問題がありました。マイクロモジュール開発を進める中で突き当たった壁や、その解決方法（できたこと、できなかったこと）についてトークを行います。\n\n'
                    'トーク内容予定：（トーク時間に収まらない場合は内容を一部変更/省略するかもしれません）\n\n'
                    '・モノリシックじゃだめなのか\n'
                    'プロジェクトの設計寿命と老後、新陳代謝\n'
                    '・Flutter/dartの問題と解決\n'
                    '  ・開発環境 \n'
                    '  ・pubspec仕様\n'
                    '  ・dart言語機能\n'
                    '  ・依存ライブラリ管理\n'
                    '  ・多言語対応の文字列の分割 \n'
                    '  ・Unit Testとビルドオプション\n'
                    '  ・CI\n'
                    '・コードレビューの要所\n'
                    '・発生した新陳代謝の例\n'
                    '・モジュール分割の基準を考える\n'
                    '・銀の弾丸ではない、この開発手法における先延ばしと諦め',
                time: '2023年11月10日：11:10~11:15(40分)',
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
                //TODO シェアするURLの文章を考える
                twitterUrl: '',
                //TODO ForteeのURLを追記する
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
