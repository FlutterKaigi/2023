import 'package:confwebsite2023/app/sponsor_page.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_data_source.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_detail_content.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_detail.g.dart';

@Riverpod(
  dependencies: [
    sponsorName,
  ],
)
Sponsor _sponsor(_SponsorRef ref) {
  final sponsorName = ref.watch(sponsorNameProvider);
  return ref.watch(
    allSponsorsProvider.select(
      (allSponsors) => allSponsors.firstWhere(
        (s) => s.name == sponsorName,
      ),
    ),
  );
}

final class SponsorDetail extends ConsumerWidget {
  const SponsorDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sponsor = ref.watch(_sponsorProvider);

    return ResponsiveWidget(
      largeWidget: SponsorDetailContent(
        sponsor: sponsor,
        h1TextStyle: AppTextStyle.pcHeading1,
        h2TextStyle: AppTextStyle.pcHeading2,
        cardWidth: 480,
        cardPadding: 48,
        padding: 40,
        contentGap: 20,
        sectionGap: 40,
      ),
      smallWidget: SponsorDetailContent(
        sponsor: sponsor,
        h1TextStyle: AppTextStyle.spHeading1,
        h2TextStyle: AppTextStyle.spHeading2,
        cardWidth: 240,
        cardPadding: 24,
        padding: 16,
        contentGap: 16,
        sectionGap: 24,
      ),
    );
  }
}
