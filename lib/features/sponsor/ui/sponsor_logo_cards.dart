import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// スポンサーのロゴカード一覧
final class SponsorLogoCards extends StatelessWidget {
  const SponsorLogoCards.platinum({super.key}) : _plan = SponsorPlan.platinum;

  const SponsorLogoCards.gold({super.key}) : _plan = SponsorPlan.gold;

  const SponsorLogoCards.silver({super.key}) : _plan = SponsorPlan.silver;

  final SponsorPlan _plan;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final sponsors = allSponsors.where((s) => s.plan == _plan);

    final cardSize = switch (_plan) {
      SponsorPlan.platinum => const Size(320, 160),
      SponsorPlan.gold => const Size(240, 120),
      SponsorPlan.silver => const Size(160, 80),
    };
    final cardPadding = switch (_plan) {
      SponsorPlan.platinum => 32.0,
      SponsorPlan.gold => 24.0,
      SponsorPlan.silver => 16.0,
    };

    final sponsorCards = sponsors.map((s) {
      // スポンサーによってロゴの縦横比が異なるため、どちらに合わせるかは調整が必要
      // bitkey のみ fixHeight
      // TODO: flutterkaigi1, flutterkaigi2 は後ほど削除
      final boxFit = switch (s.name) {
        'bitkey' || 'flutterkaigi1' || 'flutterkaigi2' => BoxFit.fitHeight,
        _ => BoxFit.fitWidth,
      };
      return Card(
        color: theme.colorScheme.surfaceVariant,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox.fromSize(
          size: cardSize,
          child: Padding(
            padding: EdgeInsets.all(cardPadding),
            child: SvgPicture.asset(
              s.logoAssetName,
              fit: boxFit,
            ),
          ),
        ),
      );
    }).toList();

    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 24,
      runSpacing: 24,
      children: sponsorCards,
    );
  }
}

// TODO: データを動的に取得する
final allSponsors = [
  // platinum
  const Sponsor(
    name: 'flutterkaigi1',
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
  ),
  const Sponsor(
    name: 'flutterkaigi1',
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
  ),
  const Sponsor(
    name: 'flutterkaigi1',
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
  ),

  // gold
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.gold,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.gold,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.gold,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.gold,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.gold,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),

  // silver
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.silver,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.silver,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.silver,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.silver,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.silver,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.silver,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.silver,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.silver,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
  const Sponsor(
    name: 'flutterkaigi2',
    displayName: '企業名・ブランド名',
    url: 'https://flutterkaigi.jp/2023/',
    logoAssetName: Assets.flutterkaigiLogoShadowed,
    plan: SponsorPlan.silver,
    session: null,
    introduction: '紹介文（600字程度）\n紹介文（600字程度）\n紹介文（600字程度）',
  ),
];
