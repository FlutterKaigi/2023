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
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class SessionDetailContent extends StatefulWidget {
  const SessionDetailContent({
    required this.session,
    required this.sponsor,
    required this.sessionTitleTextStyle,
    required this.sectionHeaderTextStyle,
    required this.contentGap,
    required this.sectionGap,
    required this.cardPadding,
    required this.youtubeWidth,
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
  final double youtubeWidth;
  final double bodyVerticalMargin;

  @override
  State<SessionDetailContent> createState() => _SessionDetailContentState();
}

class _SessionDetailContentState extends State<SessionDetailContent> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.session.youtubeUrl,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );
  }

  @override
  Future<void> dispose() async {
    await _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final contentVerticalGap = SizedBox(height: widget.contentGap);
    final sectionVerticalGap = SizedBox(height: widget.sectionGap);
    final bodyVerticalGap = SizedBox(height: widget.bodyVerticalMargin);

    final headerTitle =
        widget.session.isSponsored ? 'Sponsor Session' : 'Session';
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

    final profileBody = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.sponsor case final Sponsor sponsor) ...[
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
              backgroundImage: NetworkImage(widget.session.speaker.avatarUrl),
            ),
            Spaces.horizontal_8,
            Text(
              widget.session.speaker.name,
              style: textTheme.titleMedium,
            ),
          ],
        ),
        Spaces.vertical_16,
        if (widget.session.speaker.twitter case final String twitter)
          Link(
            uri: Uri.tryParse(
              'https://twitter.com/$twitter',
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
                    twitter,
                    style: textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
      ],
    );

    final hPadding = EdgeInsets.only(
      top: widget.contentGap,
      bottom: widget.contentGap / 2,
    );

    final youtubePlayer = Center(
      child: SizedBox(
        width: widget.youtubeWidth,
        child: YoutubePlayer(
          controller: _controller,
        ),
      ),
    );

    final body = DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.35),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(widget.contentGap),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Chip(
                  label: Text(
                    widget.session.track.name,
                  ),
                  backgroundColor: baselineColorScheme.ref.primary.primary40,
                ),
              ],
            ),
            Spaces.vertical_16,
            Text(
              widget.session.title,
              style: widget.sessionTitleTextStyle,
            ),
            Spaces.vertical_16,
            Text(
              widget.session.timeRangeLongText,
              style: textTheme.headlineSmall,
            ),
            Spaces.vertical_16,
            OutlinedButton(
              onPressed: () async {
                final url = Uri.parse(widget.session.url);
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
            youtubePlayer,
            MarkdownBody(
              data: widget.session.abstract,
              styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
                p: textTheme.bodyLarge,
                pPadding: const EdgeInsets.symmetric(vertical: 8),
                h1: textTheme.headlineLarge,
                h1Padding: hPadding,
                h2: textTheme.headlineMedium,
                h2Padding: hPadding,
                h3: textTheme.headlineSmall,
                h3Padding: hPadding,
                blockSpacing: 8,
              ),
              softLineBreak: true,
            ),
          ],
        ),
      ),
    );

    const shareWidget = SizedBox(
      width: double.infinity,
      child: SocialShare(),
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
