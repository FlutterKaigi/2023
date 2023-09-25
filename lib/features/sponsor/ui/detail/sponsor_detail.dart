import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_session.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_detail_content.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SponsorDetail extends ConsumerWidget {
  const SponsorDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: データを動的に取得する
    const sponsor = _sponsor;

    return ResponsiveWidget(
      largeWidget: SponsorDetailContent(
        sponsor: sponsor,
        h1TextStyle: AppTextStyle.pcHeading1,
        h2TextStyle: AppTextStyle.pcHeading2,
        logoWidth: 480,
        padding: 40,
        contentGap: 20,
        sectionGap: 40,
        onTweetPressed: () {},
        onCopyUrlPressed: () {},
      ),
      smallWidget: SponsorDetailContent(
        sponsor: sponsor,
        h1TextStyle: AppTextStyle.spHeading1,
        h2TextStyle: AppTextStyle.spHeading2,
        logoWidth: 240,
        padding: 16,
        contentGap: 16,
        sectionGap: 24,
        onTweetPressed: () {},
        onCopyUrlPressed: () {},
      ),
    );
  }
}

// TODO: データを動的に取得する
const _sponsor = Sponsor(
  name: 'flutterkaigi',
  displayName: '企業名・ブランド名',
  url: 'https://flutterkaigi.jp/2023/',
  logoAssetName: Assets.flutterkaigiLogoShadowed,
  plan: SponsorPlan.platinum,
  session: SponsorSession(
    id: 'id',
    title: 'Flutterアプリ開発におけるモジュール分割戦略 〜dart15万行を100分割する〜',
    url: 'https://flutterkaigi.jp/2023/',
    scheduledAt: '2023年11月10日 11:10〜11:55（45分）',
  ),
  introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
);

// const _sponsor = Sponsor(
//   name: 'flutterkaigi',
//   displayName: '企業名・ブランド名',
//   url: 'https://flutterkaigi.jp/2023/',
//   logoAssetName: Assets.flutterkaigiLogoShadowed,
//   plan: SponsorPlan.platinum,
//   session: null,
//   introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
// );
