import 'package:confwebsite2023/core/components/wanted.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TicketSection extends StatelessWidget {
  const TicketSection({super.key});

  @override
  Widget build(BuildContext context) {
    return WantedWidget(
      title: 'Join FlutterKaigi 2023!',
      content: 'FlutterKaigi 2023は 初のハイブリッド開催となります!\n'
          'オフライン会場 または オンライン視聴からお選びください!\n'
          'FlutterKaigi 2023のチケットをPassMarketにて販売・配布しています。\n'
          'オフライン会場チケット(ノベルティ・懇談会含む)は3,000円、オンライン配信視聴チケットは無料です。\n'
          'オンライン配信については、開催当日にライブ配信を行う予定です。配信方式について開催までに変更する可能性があります。',
      buttonTitle: 'チケット詳細を確認する',
      onPressed: () async => launchUrlString(
        'https://passmarket.yahoo.co.jp/event/show/detail/02feie4cn9831.html',
        mode: LaunchMode.externalApplication,
      ),
    );
  }
}
