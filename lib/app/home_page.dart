import 'dart:math';

import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/access/ui/access_widget.dart';
import 'package:confwebsite2023/features/count_down/model/count_down_timer.dart';
import 'package:confwebsite2023/features/count_down/ui/count_down_section.dart';
import 'package:confwebsite2023/features/event/hands-on/ui/hands_on_event.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/header/data/header_item_button_data.dart';
import 'package:confwebsite2023/features/header/ui/header_widget.dart';
import 'package:confwebsite2023/features/hero/ui/hero_section.dart';
import 'package:confwebsite2023/features/news/ui/news_section.dart';
import 'package:confwebsite2023/features/session/model/talk_user.dart';
import 'package:confwebsite2023/features/session_page/data/session_model.dart';
import 'package:confwebsite2023/features/session_page/session_detail/session_detail.dart';
import 'package:confwebsite2023/features/sponsor/ui/list/sponsors_section.dart';
import 'package:confwebsite2023/features/staff/ui/staff_header.dart';
import 'package:confwebsite2023/features/staff/ui/staff_table.dart';
import 'package:confwebsite2023/features/ticket/ui/ticket_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:js/js_util.dart' as js_util;

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    const sectionKeys = (
      access: GlobalObjectKey('accessSectionKey'),
      event: GlobalObjectKey('eventSectionKey'),
      ticket: GlobalObjectKey('ticketSectionKey'),
      session: GlobalObjectKey('sessionSectionKey'),
      sponsor: GlobalObjectKey('sponsorSectionKey'),
      staff: GlobalObjectKey('staffSectionKey'),
    );
    const headerBarKey = GlobalObjectKey('headerBarKey');

    Future<void> scrollToSection(GlobalKey key) async {
      final displayHeight = MediaQuery.sizeOf(context).height;
      final targetWidgetHeight = key.currentContext!.size!.height;
      final alignment = kToolbarHeight / (displayHeight - targetWidgetHeight);

      return Scrollable.ensureVisible(
        key.currentContext!,
        alignment: alignment,
        curve: Curves.easeOutCirc,
        duration: const Duration(milliseconds: 750),
      );
    }

    final items = <HeaderItemButtonData>[
      HeaderItemButtonData(
        title: 'Access',
        onPressed: () async => scrollToSection(sectionKeys.access),
      ),
      HeaderItemButtonData(
        title: 'Ticket',
        onPressed: () async => scrollToSection(sectionKeys.ticket),
      ),
      HeaderItemButtonData(
        title: 'Event',
        onPressed: () async => scrollToSection(sectionKeys.event),
      ),
      HeaderItemButtonData(
        title: 'Sponsor',
        onPressed: () async => scrollToSection(sectionKeys.sponsor),
      ),
      HeaderItemButtonData(
        title: 'Staff',
        onPressed: () async => scrollToSection(sectionKeys.staff),
      ),
      HeaderItemButtonData(
        title: 'Session',
        onPressed: () async {
          const sessionModel = SessionModel(
            sessionName: 'Session 1-1',
            title: 'DartによるBFF構築・運用 〜dart_frog×melos〜',
            user: TalkUser(
              name: 'もぐもぐ',
              thumbnailUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Shoyu_ramen%2C_at_Kasukabe_Station_%282014.05.05%29_1.jpg/260px-Shoyu_ramen%2C_at_Kasukabe_Station_%282014.05.05%29_1.jpg',
            ),
            contents:
                'Dart言語はFlutterとともにアプリフロントエンドの領域で広く認知されてきました。しかし、バックエンドにおける実践的な活用例はまだまだ少ないのが現状です。\n'
                'とはいえ、Flutterアプリ向けのBFF(Backend For Frontend)をDartで実装することは、型宣言を共通化することができ、生産性を飛躍的に向上させるアプローチとなり得ます。\n'
                '本セッションでは、Dartをバックエンド・BFFに採用する背景から、dart_frogというパッケージの特徴と、マルチパッケージ管理ツールであるmelos を利用して、Flutterでのアプリ構築を加速させる過程について深掘りします。更に、実際の案件でdart_frogとmelosを導入していく過程、そしてそれをどのようなプロジェクトに組み込んだのかの経験談を交えながら、Dartバックエンド・BFFとしての魅力と、それを実現する具体的な手法をお伝えます。\n\n'
                '想定視聴者\n\n'
                '・バックエンド・BFFにDartを採用することを検討している開発者\n'
                '・BFFの設計や実装に興味がある方\n'
                '・dart_frog 等のDartのバックエンド関連の技術に興味を持つエンジニア\n'
                '・melos を用いてマルチパッケージ管理を楽にしたいエンジニア\n'
                ' 実際のプロジェクトでの技術導入の経験談やノウハウを知りたい方',
            time: '2023年11月10日：11:10~11:15(40分)',
            trackName: 'Track 1',
            twitter: 'YumNumm',
            isSponsor: false,
            // sponsorName: '株式会社ゆめみ',
            // sponsorImage:'https://yumemi.co.jp/grow-with-new-logo/img/common/logo_new.svg',
            tweet:
                'https://twitter.com/intent/tweet?original_referer=https%3A%2F%2Ffortee.jp%2F&ref_src=twsrc%5Etfw%7Ctwcamp%5Ebuttonembed%7Ctwterm%5Eshare%7Ctwgr%5E&text=Dart%E3%81%AB%E3%82%88%E3%82%8BBFF%E6%A7%8B%E7%AF%89%E3%83%BB%E9%81%8B%E7%94%A8%20%E3%80%9Cdart_frog%C3%97melos%E3%80%9C%20by%20%E3%82%82%E3%81%90%E3%82%82%E3%81%90%20%7C%20%E3%83%88%E3%83%BC%E3%82%AF%20%7C%20FlutterKaigi%202023%20%23FlutterKaigi%20-%20fortee.jp&url=https%3A%2F%2Ffortee.jp%2Fflutterkaigi-2023%2Fproposal%2F972ffbac-422b-4d4b-9686-f59c4438da04',
            forteeUrl:
                'https://fortee.jp/flutterkaigi-2023/proposal/972ffbac-422b-4d4b-9686-f59c4438da04',
          );

          await Navigator.push<void>(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const SessionDetail(sessionModel: sessionModel),
            ),
          );
        },
      ),
    ];

    return Scaffold(
      backgroundColor: baselineColorScheme.ref.secondary.secondary10,
      body: _MainPageBody(
        scrollController: scrollController,
        sectionKeys: sectionKeys,
        items: items,
      ),
      appBar: HeaderBar(
        items: items,
        onTitleTap: () async => scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 750),
          curve: Curves.easeOutCirc,
        ),
        key: headerBarKey,
      ),
      extendBodyBehindAppBar: true,
    );
  }
}

class _MainPageBody extends StatelessWidget {
  const _MainPageBody({
    required this.scrollController,
    required this.sectionKeys,
    required this.items,
  });

  final ScrollController scrollController;
  final ({
    GlobalObjectKey access,
    GlobalObjectKey event,
    GlobalObjectKey ticket,
    GlobalObjectKey session,
    GlobalObjectKey sponsor,
    GlobalObjectKey staff
  }) sectionKeys;
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
            const SliverToBoxAdapter(
              child: Spaces.vertical_40,
            ),
            _Sliver(
              padding: padding,
              child: const HeroSection(),
            ),
            _Sliver(
              padding: padding,
              child: Consumer(
                builder: (context, ref, child) {
                  final now = ref.watch(nowProvider);
                  return Visibility(
                    visible: CountDownSection.isVisible(now),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Spaces.vertical_80,
                        CountDownSection(),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_80,
            ),
            _Sliver(
              padding: padding,
              child: const NewsSection(),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_200,
            ),
            _Sliver(
              padding: padding,
              child: AccessWidget(
                key: sectionKeys.access,
              ),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_200,
            ),
            _Sliver(
              padding: padding,
              child: TicketSection(
                key: sectionKeys.ticket,
              ),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_200,
            ),
            _Sliver(
              padding: padding,
              child: HandsOnEvent(
                key: sectionKeys.event,
              ),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_200,
            ),
            _Sliver(
              padding: padding,
              child: SponsorsSection(
                key: sectionKeys.sponsor,
              ),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_200,
            ),
            _Sliver(
              padding: padding,
              child: StaffHeader(
                key: sectionKeys.staff,
              ),
            ),
            const SliverToBoxAdapter(
              child: Spaces.vertical_16,
            ),
            SliverPadding(
              padding: padding,
              sliver: const StaffTable(),
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
