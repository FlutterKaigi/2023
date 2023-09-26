import 'package:confwebsite2023/core/components/social_share.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_introduction.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_session.dart';
import 'package:confwebsite2023/features/sponsor/ui/sponsor_plan_header.dart';
import 'package:confwebsite2023/features/sponsor/ui/sponsor_section_header.dart';
import 'package:flutter/material.dart';

final class SponsorDetailContent extends StatelessWidget {
  const SponsorDetailContent({
    required this.sponsor,
    required this.h1TextStyle,
    required this.h2TextStyle,
    required this.cardWidth,
    required this.cardPadding,
    required this.padding,
    required this.contentGap,
    required this.sectionGap,
    required this.onTweetPressed,
    required this.onCopyUrlPressed,
    super.key,
  });

  final Sponsor sponsor;

  final TextStyle h1TextStyle;
  final TextStyle h2TextStyle;
  final double cardWidth;
  final double cardPadding;
  final double padding;
  final double contentGap;
  final double sectionGap;
  final VoidCallback? onTweetPressed;
  final VoidCallback? onCopyUrlPressed;

  @override
  Widget build(BuildContext context) {
    final contentVerticalGap = SizedBox(height: contentGap);
    final sectionVerticalGap = SizedBox(height: sectionGap);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SponsorSectionHeader('Sponsor'),
        SizedBox(
          width: double.infinity,
          child: SocialShare(
            onTweetPressed: onTweetPressed,
            onCopyUrlPressed: onCopyUrlPressed,
          ),
        ),
        contentVerticalGap,
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0x22000000),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              children: [
                switch (sponsor.plan) {
                  SponsorPlan.platinum => const SponsorPlanHeader.platinum(
                      text: 'Platinum Sponsor',
                    ),
                  SponsorPlan.gold => const SponsorPlanHeader.gold(
                      text: 'Gold Sponsor',
                    ),
                  SponsorPlan.silver => const SponsorPlanHeader.silver(
                      text: 'Silver Sponsor',
                    ),
                },
                sectionVerticalGap,
                Column(
                  children: [
                    SponsorIntroduction(
                      assetName: sponsor.logoAssetName,
                      cardWidth: cardWidth,
                      cardPadding: cardPadding,
                      name: sponsor.displayName,
                      url: sponsor.url,
                      introduction: sponsor.introduction,
                    ),
                    sectionVerticalGap,
                    if (sponsor.session != null) ...[
                      const Divider(height: 1),
                      sectionVerticalGap,
                      SponsorSessionSection(session: sponsor.session!),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
        contentVerticalGap,
        SizedBox(
          width: double.infinity,
          child: SocialShare(
            onTweetPressed: onTweetPressed,
            onCopyUrlPressed: onCopyUrlPressed,
          ),
        ),
      ],
    );
  }
}
