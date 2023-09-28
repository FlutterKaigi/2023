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
    final shareUrl = Uri.base.origin + route.location;

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
        DecoratedBox(
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
                      backgroundColor:
                          baselineColorScheme.ref.primary.primary40,
                    ),
                    Spaces.horizontal_16,
                    Text(
                      session.sessionName,
                      style: textTheme.bodyLarge!.copyWith(
                        fontSize: 24,
                        height: 1.33,
                      ),
                    ),
                  ],
                ),
                Spaces.vertical_24,
                Text(
                  session.title,
                  style: textTheme.titleLarge!.copyWith(
                    fontSize: 36,
                    height: 1.15,
                  ),
                ),
                Spaces.vertical_16,
                Text(
                  session.time,
                  style: textTheme.headlineSmall!.copyWith(
                    fontSize: 24,
                    height: 1.33,
                  ),
                ),
                Spaces.vertical_16,
                SizedBox(
                  width: 132,
                  height: 40,
                  child: OutlinedButton(
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
                    child: Text(
                      'Forteeで見る',
                      style: textTheme.labelLarge!.copyWith(
                        color: colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                Spaces.vertical_24,
                Divider(color: baselineColorScheme.ref.primary.primary50),
                Spaces.vertical_24,
                if (session.isSponsor)
                  Column(
                    children: [
                      SponsorDetailLogoCard(
                        assetName: session.sponsorImage!,
                        cardWidth: 240,
                        cardPadding: 24,
                      ),
                      Spaces.vertical_16,
                    ],
                  ),
                if (session.isSponsor)
                  Column(
                    children: [
                      Text(
                        session.sponsorName!,
                        style: textTheme.bodyLarge,
                      ),
                      Spaces.vertical_16,
                    ],
                  ),
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
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.twitter,
                      width: 24,
                      height: 24,
                    ),
                    Spaces.horizontal_4,
                    Link(
                      uri: Uri.tryParse(
                        'https://twitter.com/${session.twitter}',
                      ),
                      target: LinkTarget.blank,
                      builder: (context, openLink) {
                        return TextButton(
                          onPressed: openLink,
                          child: Text(
                            session.twitter,
                            style: textTheme.titleMedium,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Spaces.vertical_24,
                Divider(color: baselineColorScheme.ref.primary.primary50),
                Spaces.vertical_24,
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
        ),
      ],
    );
  }
}
