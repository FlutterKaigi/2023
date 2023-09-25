import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_data_source.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// スポンサーのロゴカード一覧
final class SponsorLogoCards extends ConsumerWidget {
  const SponsorLogoCards.platinum({super.key}) : _plan = SponsorPlan.platinum;

  const SponsorLogoCards.gold({super.key}) : _plan = SponsorPlan.gold;

  const SponsorLogoCards.silver({super.key}) : _plan = SponsorPlan.silver;

  final SponsorPlan _plan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sponsors = ref.watch(planSponsorsProvider(_plan));

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

    return _StatelessSponsorLogoCards(
      sponsors: sponsors,
      cardSize: cardSize,
      cardPadding: cardPadding,
    );
  }
}

final class _StatelessSponsorLogoCards extends StatelessWidget {
  const _StatelessSponsorLogoCards({
    required this.sponsors,
    required this.cardSize,
    required this.cardPadding,
  });

  final List<Sponsor> sponsors;
  final Size cardSize;
  final double cardPadding;

  @override
  Widget build(BuildContext context) {
    final sponsorCards = sponsors.map((s) {
      final Widget logo;
      if (s.logoAssetName == Assets.sponsors.cyberagent.keyName ||
          s.logoAssetName == Assets.sponsors.harmo.keyName ||
          s.logoAssetName == Assets.sponsors.recruit.keyName) {
        logo = Image.asset(
          s.logoAssetName,
          fit: BoxFit.contain,
        );
      } else {
        logo = SvgPicture.asset(s.logoAssetName);
      }
      return Card(
        color: baselineColorScheme.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox.fromSize(
          size: cardSize,
          child: Padding(
            padding: EdgeInsets.all(cardPadding),
            child: logo,
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
