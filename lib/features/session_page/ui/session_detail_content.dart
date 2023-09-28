import 'package:confwebsite2023/app/router/router.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/components/social_share.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session_page/data/session_model.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_detail_logo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class SessionDetailContent extends StatelessWidget {
  const SessionDetailContent({
    required this.session,
    required this.sessionTitleTextStyle,
    required this.sectionHeaderTextStyle,
    required this.contentGap,
    required this.sectionGap,
    required this.cardPadding,
    super.key,
  });

  final SessionModel session;
  final TextStyle sectionHeaderTextStyle;
  final TextStyle sessionTitleTextStyle;
  final double cardPadding;
  final double contentGap;
  final double sectionGap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final contentVerticalGap = SizedBox(height: contentGap);
    final sectionVerticalGap = SizedBox(height: sectionGap);
    final headerTitle = session.isSponsor ? 'Sponsor Session' : 'Session';
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
    final route = SessionPageRoute(id: session.id);
    final shareUrl = Uri.base.origin + route.id;

    final profileBody = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (session.isSponsor) ...[
          SponsorDetailLogoCard(
            assetName: session.sponsorImage!,
            cardWidth: 240,
            cardPadding: 24,
          ),
          Spaces.vertical_16,
        ],
        if (session.isSponsor) ...[
          Text(
            session.sponsorName!,
            style: textTheme.bodyLarge,
          ),
          Spaces.vertical_16,
        ],
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(session.user.thumbnailUrl),
            ),
            Spaces.horizontal_8,
            Text(
              session.user.name,
              style: textTheme.titleMedium!.copyWith(
                fontSize: 22,
                height: 1.27,
              ),
            ),
          ],
        ),
        Spaces.vertical_16,
        Link(
          uri: Uri.tryParse(
            'https://twitter.com/${session.twitter}',
          ),
          builder: (context, followLink) => TextButton(
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
                  session.twitter,
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
                    session.trackName,
                  ),
                  backgroundColor: baselineColorScheme.ref.primary.primary40,
                ),
                Spaces.horizontal_16,
                Text(
                  session.sessionName,
                  style: textTheme.headlineSmall,
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
              session.time,
              style: textTheme.headlineSmall,
            ),
            Spaces.vertical_16,
            OutlinedButton(
              onPressed: () async {
                final url = Uri.parse(session.forteeUrl);
                await launchUrl(url);
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
              ),
              child: const Text(
                'Forteeで見る',
              ),
            ),
            contentVerticalGap,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            contentVerticalGap,
            profileBody,
            contentVerticalGap,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            contentVerticalGap,
            Text(
              session.contents,
              style: textTheme.bodyLarge!.copyWith(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );

    return Column(
      children: [
        header,
        sectionVerticalGap,
        SizedBox(
          width: double.infinity,
          child: SocialShare(
            shareUrl: shareUrl,
          ),
        ),
        contentVerticalGap,
        body,
      ],
    );
  }
}
