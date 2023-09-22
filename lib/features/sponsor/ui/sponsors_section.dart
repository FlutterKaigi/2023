import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_session.dart';
import 'package:confwebsite2023/features/sponsor/ui/sponsor_plan_header.dart';
import 'package:confwebsite2023/features/sponsor/ui/sponsors_header.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SponsorsSection extends ConsumerWidget {
  const SponsorsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: データを動的に取得する
    final sponsors = [
      const Sponsor(
        name: 'flutterkaigi1',
        displayName: '企業名・ブランド名',
        url: 'https://flutterkaigi.jp/2023/',
        logoAssetName: Assets.flutterkaigiLogoShadowed,
        plan: SponsorPlan.platinum,
        session: null,
        introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
      ),
      const Sponsor(
        name: 'flutterkaigi2',
        displayName: '企業名・ブランド名',
        url: 'https://flutterkaigi.jp/2023/',
        logoAssetName: Assets.flutterkaigiLogoShadowed,
        plan: SponsorPlan.gold,
        session: SponsorSession(
          id: 'id',
          title: 'Flutterアプリ開発におけるモジュール分割戦略 〜dart15万行を100分割する〜',
          url: 'https://flutterkaigi.jp/2023/',
          scheduledAt: '2023年11月10日 11:10〜11:55（45分）',
        ),
        introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
      ),
    ];

    final platinumSponsors = sponsors
        .where((sponsor) => sponsor.plan == SponsorPlan.platinum)
        .toList();
    final goldSponsors =
        sponsors.where((sponsor) => sponsor.plan == SponsorPlan.gold).toList();
    final silverSponsors = sponsors
        .where((sponsor) => sponsor.plan == SponsorPlan.silver)
        .toList();

    return ResponsiveWidget(
      largeWidget: _SponsorsSectionContent(
        platinumSponsors: platinumSponsors,
        platinumSponsorsCrossAxisCount: 2,
        goldSponsors: goldSponsors,
        goldSponsorsCrossAxisCount: 3,
        silverSponsors: silverSponsors,
        silverSponsorsCrossAxisCount: 5,
        h1TextStyle: AppTextStyle.pcHeading1,
        h2TextStyle: AppTextStyle.pcHeading2,
      ),
      smallWidget: _SponsorsSectionContent(
        platinumSponsors: platinumSponsors,
        platinumSponsorsCrossAxisCount: 1,
        goldSponsors: goldSponsors,
        goldSponsorsCrossAxisCount: 1,
        silverSponsors: silverSponsors,
        silverSponsorsCrossAxisCount: 2,
        h1TextStyle: AppTextStyle.spHeading1,
        h2TextStyle: AppTextStyle.spHeading2,
      ),
    );
  }
}

final class _SponsorsSectionContent extends StatelessWidget {
  const _SponsorsSectionContent({
    required this.platinumSponsors,
    required this.platinumSponsorsCrossAxisCount,
    required this.goldSponsors,
    required this.goldSponsorsCrossAxisCount,
    required this.silverSponsors,
    required this.silverSponsorsCrossAxisCount,
    required this.h1TextStyle,
    required this.h2TextStyle,
  });

  final List<Sponsor> platinumSponsors;
  final int platinumSponsorsCrossAxisCount;
  final List<Sponsor> goldSponsors;
  final int goldSponsorsCrossAxisCount;
  final List<Sponsor> silverSponsors;
  final int silverSponsorsCrossAxisCount;
  final TextStyle h1TextStyle;
  final TextStyle h2TextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SponsorsHeader(
              style: h1TextStyle,
            ),
          ],
        ),
        SponsorPlanHeader(
          text: 'Platinum',
          style: h2TextStyle,
          plan: SponsorPlan.platinum,
        ),
        SponsorPlanHeader(
          text: 'Gold',
          style: h2TextStyle,
          plan: SponsorPlan.gold,
        ),
        SponsorPlanHeader(
          text: 'Silver',
          style: h2TextStyle,
          plan: SponsorPlan.silver,
        ),
      ],
    );
  }
}
