import 'package:confwebsite2023/core/components/wanted.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SponsorWanted extends StatelessWidget {
  const SponsorWanted({super.key});

  @override
  Widget build(BuildContext context) {
    return WantedWidget(
      title: 'Would you like to become a sponsor?',
      content:
          // ignore: lines_longer_than_80_chars
          'FlutterKaigi 2023を一緒に盛り上げていただけるスポンサーさまを心からお待ちしております。この機会にあなたの企業や製品を、国内外のFlutterやDartに情熱を持つ技術者たちに紹介しませんか？ FlutterKaigi 2023は皆さまのご協力により、成功へと導かれます。ともにFlutterコミュニティを成長させ、盛り上げるお手伝いをお願い申し上げます。',
      buttonTitle: 'スポンサー募集について',
      image: Assets.illustrationTeamwork,
      onPressed: () async => launchUrlString(
        'https://medium.com/flutterkaigi/flutterkaigi-2023-%E3%82%B9%E3%83%9D%E3%83%B3%E3%82%B5%E3%83%BC%E5%8B%9F%E9%9B%86%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6-e31fc3adfa5e',
        mode: LaunchMode.externalApplication,
      ),
    );
  }
}
