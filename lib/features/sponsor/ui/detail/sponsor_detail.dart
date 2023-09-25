import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_provider.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_detail_content.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SponsorDetail extends ConsumerWidget {
  const SponsorDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sponsor = ref.watch(sponsorProvider);

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
