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
          'FlutterKaigi 2023を一緒に盛り上げていただけるスポンサーさまを心からお待ちしております。この機会にあなたの企業や製品を、国内外のFlutterやDartに情熱を持つ技術者たちに紹介しませんか？\n'
          // ignore: lines_longer_than_80_chars
          'FlutterKaigi 2023は皆さまのご協力により、成功へと導かれます。ともにFlutterコミュニティを成長させ、盛り上げるお手伝いをお願い申し上げます。',
      buttonTitle: 'スポンサーになる',
      image: Assets.illustrationTeamwork,
      onPressed: () async => launchUrlString(
        'https://docs.google.com/presentation/d/1zxd1fciRqBggEr43KuDw2zCmA14XzgCV3uqxdByvfWU',
        mode: LaunchMode.externalApplication,
      ),
    );
  }
}
