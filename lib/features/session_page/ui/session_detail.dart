import 'package:confwebsite2023/app/session_page.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/model/talk_user.dart';
import 'package:confwebsite2023/features/session_page/data/session_model.dart';
import 'package:confwebsite2023/features/session_page/ui/session_detail_content.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_detail.g.dart';

@Riverpod(
  dependencies: [
    sessionId,
  ],
)
SessionModel _session(_SessionRef ref) {
  final sessionName = ref.watch(sessionIdProvider);
  // 仮でSessionModelを返す
  return const SessionModel(
    id: '972ffbac-422b-4d4b-9686-f59c4438da04',
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
    time: '2023年11月10日 11:10~11:15(40分)',
    trackName: 'Track 1',
    twitter: 'YumNumm',
    isSponsor: true,
    sponsorName: '株式会社ゆめみ',
    sponsorImage: 'assets/sponsors/demaecan.svg',
    forteeUrl:
        'https://fortee.jp/flutterkaigi-2023/proposal/972ffbac-422b-4d4b-9686-f59c4438da04',
  );
}

class SessionDetail extends ConsumerWidget {
  const SessionDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(_sessionProvider);

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return ResponsiveWidget(
      largeWidget: SessionDetailContent(
        sessionModel: session,
        cardPadding: 40,
        contentGap: 40,
        sectionHeaderTextStyle: AppTextStyle.pcHeading1,
        sessionTitleTextStyle: textTheme.displayMedium!,
      ),
      smallWidget: SessionDetailContent(
        sessionModel: session,
        cardPadding: 24,
        contentGap: 16,
        sectionHeaderTextStyle: AppTextStyle.spHeading1,
        sessionTitleTextStyle: textTheme.displaySmall!,
      ),
    );
  }
}
