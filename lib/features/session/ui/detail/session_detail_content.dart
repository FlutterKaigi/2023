import 'package:confwebsite2023/app/router/router.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/components/social_share.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_detail_logo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class SessionDetailContent extends StatelessWidget {
  const SessionDetailContent({
    required this.session,
    required this.sponsor,
    required this.sessionTitleTextStyle,
    required this.sectionHeaderTextStyle,
    required this.contentGap,
    required this.sectionGap,
    required this.cardPadding,
    required this.bodyVerticalMargin,
    super.key,
  });

  final TalkSession session;
  final Sponsor? sponsor;
  final TextStyle sectionHeaderTextStyle;
  final TextStyle sessionTitleTextStyle;
  final double cardPadding;
  final double contentGap;
  final double sectionGap;
  final double bodyVerticalMargin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final contentVerticalGap = SizedBox(height: contentGap);
    final sectionVerticalGap = SizedBox(height: sectionGap);
    final bodyVerticalGap = SizedBox(height: bodyVerticalMargin);

    final headerTitle = session.isSponsored ? 'Sponsor Session' : 'Session';
    final headerGradient = GradientConstant.accent.primary;
    final header = ResponsiveWidget(
      largeWidget: SectionHeader.leftAlignment(
        text: headerTitle,
        style: AppTextStyle.pcHeading1,
        gradient: headerGradient,
      ),
      smallWidget: SectionHeader.leftAlignment(
        text: headerTitle,
        style: AppTextStyle.spHeading1,
        gradient: headerGradient,
      ),
    );
    final route = SessionPageRoute(id: session.uuid);
    final shareUrl = Uri.base.origin + route.location;

    final profileBody = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (sponsor case final Sponsor sponsor) ...[
          SponsorDetailLogoCard(
            assetName: sponsor.logoAssetName,
            cardWidth: 240,
            cardPadding: 24,
          ),
          Spaces.vertical_16,
        ],
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(session.speaker.avatarUrl),
            ),
            Spaces.horizontal_8,
            Text(
              session.speaker.name,
              style: textTheme.titleMedium,
            ),
          ],
        ),
        Spaces.vertical_16,
        if (session.speaker.twitter case final String twitter)
          Link(
            uri: Uri.tryParse(
              'https://twitter.com/$twitter',
            ),
            builder: (context, followLink) =>
                TextButton(
                  onPressed: followLink,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.twitter,
                        width: 24,
                        height: 24,
                      ),
                      Spaces.horizontal_8,
                      Text(
                        twitter,
                        style: textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
          ),
      ],
    );

    final body = DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.35),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(contentGap),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Chip(
                  label: Text(
                    session.track.name,
                  ),
                  backgroundColor: baselineColorScheme.ref.primary.primary40,
                ),
              ],
            ),
            Spaces.vertical_16,
            Text(
              session.title,
              style: sessionTitleTextStyle,
            ),
            Spaces.vertical_16,
            Text(
              session.timeText,
              style: textTheme.headlineSmall,
            ),
            Spaces.vertical_16,
            OutlinedButton(
              onPressed: () async {
                final url = Uri.parse(session.url);
                await launchUrl(url);
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
              ),
              child: Text(
                'Forteeで見る',
                style: textTheme.labelLarge,
              ),
            ),
            contentVerticalGap,
            Divider(color: baselineColorScheme.ref.secondary.secondary50),
            contentVerticalGap,
            profileBody,
            contentVerticalGap,
            Divider(color: baselineColorScheme.ref.secondary.secondary50),
            contentVerticalGap,
            MarkdownBody(
              data: session.abstract,
              softLineBreak: true,
            ),
          ],
        ),
      ),
    );

    final shareWidget = SizedBox(
      width: double.infinity,
      child: SocialShare(
        shareUrl: shareUrl,
      ),
    );

    return Column(
      children: [
        header,
        sectionVerticalGap,
        shareWidget,
        bodyVerticalGap,
        body,
        bodyVerticalGap,
        shareWidget,
      ],
    );
  }
}