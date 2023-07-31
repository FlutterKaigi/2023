import 'package:confwebsite2023/core/components/wanted.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SessionWanted extends StatelessWidget {
  const SessionWanted({super.key});

  @override
  Widget build(BuildContext context) {
    return WantedWidget(
      title: 'Proposal wanted!',
      content: 'FlutterKaigi 2023でのセッションのプロポーザルを募集開始しました！\n'
          'FlutterKaigiは、技術者が自分の知識と経験を共有するためのカンファレンスです。'
          '新参者もベテランも、あなたの知識を共有する絶好の機会です。\n'
          'テーマはFlutterやDartに関連していれば何でもOKです。'
          '初心者向けのヒントから上級者向けのテクニック、チュートリアル、ライブラリの紹介、'
          'ベストプラクティス、挑戦した事例など、聞いて面白く、他の開発者に有益な内容を募集しています。\n'
          'FlutterKaigi 2023は、あなたのユニークな視点と経験、そしてFlutterやDartへの情熱を歓迎します。 '
          '私たちと共にあなたの「素晴らしいセッション」を世界に伝えましょう。',
      subContent: 'ただし、自社製品の宣伝を目的としたトークや、FlutterやDartと無関係なトピックは避けてください。'
          '（Flutter開発支援ツールについては除きます。）',
      buttonTitle: 'プロポーザルを提出する',
      image: Assets.personalWanted,
      onPressed: () async => launchUrlString(
        'https://fortee.jp/flutterkaigi-2023/speaker/proposal/cfp',
        mode: LaunchMode.externalApplication,
      ),
    );
  }
}
