import 'package:confwebsite2023/core/components/social_share.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_introduction.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_session.dart';
import 'package:confwebsite2023/features/sponsor/ui/sponsor_plan_header.dart';
import 'package:confwebsite2023/features/sponsor/ui/sponsors_header.dart';
import 'package:flutter/material.dart';

final class SponsorDetailContent extends StatelessWidget {
  const SponsorDetailContent({
    required this.sponsor,
    required this.h1TextStyle,
    required this.h2TextStyle,
    required this.onTweetPressed,
    required this.onCopyUrlPressed,
    super.key,
  });

  final Sponsor sponsor;

  final TextStyle h1TextStyle;
  final TextStyle h2TextStyle;
  final VoidCallback? onTweetPressed;
  final VoidCallback? onCopyUrlPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SponsorsHeader(),
        SizedBox(
          width: double.infinity,
          child: SocialShare(
            onTweetPressed: onTweetPressed,
            onCopyUrlPressed: onCopyUrlPressed,
          ),
        ),
        Spaces.vertical_20,
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0x22000000),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40),
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
                Column(
                  children: [
                    SponsorIntroduction(
                      assetName: sponsor.logoAssetName,
                      name: sponsor.displayName,
                      url: sponsor.url,
                      introduction: sponsor.introduction,
                    ),
                    Spaces.vertical_40,
                    if (sponsor.session != null) ...[
                      const Divider(height: 1),
                      Spaces.vertical_40,
                      SponsorSessionSection(session: sponsor.session!),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
        Spaces.vertical_20,
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
