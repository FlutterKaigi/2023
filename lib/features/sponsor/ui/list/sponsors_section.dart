import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme/dimension.dart';
import 'package:confwebsite2023/features/sponsor/ui/list/sponsor_logo_cards.dart';
import 'package:confwebsite2023/features/sponsor/ui/sponsor_plan_header.dart';
import 'package:confwebsite2023/features/sponsor/ui/sponsor_section_header.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SponsorsSection extends ConsumerWidget {
  const SponsorsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const verticalGapBelowTitles = ResponsiveWidget(
      largeWidget: Spaces.vertical_40,
      smallWidget: Spaces.vertical_24,
    );

    const verticalGapBetweenPlans = ResponsiveWidget(
      largeWidget: Spaces.vertical_100,
      smallWidget: Spaces.vertical_80,
    );

    const child = Column(
      children: [
        SponsorPlanHeader.platinum(text: 'Platinum'),
        verticalGapBelowTitles,
        SponsorLogoCards.platinum(),
        verticalGapBetweenPlans,
        SponsorPlanHeader.gold(text: 'Gold'),
        verticalGapBelowTitles,
        SponsorLogoCards.gold(),
        verticalGapBetweenPlans,
        SponsorPlanHeader.silver(text: 'Silver'),
        verticalGapBelowTitles,
        SponsorLogoCards.silver(),
      ],
    );

    const wrapper = ResponsiveWidget(
      largeWidget: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: child,
      ),
      smallWidget: child,
    );

    return const Column(
      children: [
        SponsorSectionHeader('Sponsors'),
        verticalGapBelowTitles,
        wrapper,
      ],
    );
  }
}
