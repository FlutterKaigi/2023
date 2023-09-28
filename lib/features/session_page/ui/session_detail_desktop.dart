import 'dart:math';

import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/components/social_share.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/session_page/data/session_model.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_detail_logo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class SessionDetailDesktop extends StatelessWidget {
  const SessionDetailDesktop({
    required this.sessionModel,
    super.key,
  });

  final SessionModel sessionModel;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final largeScreenSize = ResponsiveWidget.largeScreenSize.toDouble();
    final horizontal = max<double>(16, (width - largeScreenSize) / 4.0);
    final padding = EdgeInsets.symmetric(horizontal: horizontal);
    final gradient = GradientConstant.accent.primary;
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 800,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF602678),
                  Color(0x004B0082),
                ],
              ),
            ),
          ),
        ),
        CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Spaces.vertical_80,
            ),
            _Sliver(
              padding: padding,
              child: SectionHeader.leftAlignment(
                text: sessionModel.isSponsor ? 'Sponsor Sessions' : 'Sessions',
                gradient: gradient,
                style: AppTextStyle.pcHeading1,
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_80,
            ),
            _Sliver(
              padding: padding,
              child: const SocialShare(
                //TODO http://localhost:55796/sponsors/yumemi #flutterkaigi via @FlutterKaigiのようなURLを取得する
                shareUrl: '',
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_20,
            ),
            _Sliver(
              padding: padding,
              child: _SessionDetailDesktopBody(
                sessionModel: sessionModel,
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_10,
            ),
            _Sliver(
              padding: padding,
              child: const SocialShare(
                //TODO http://localhost:55796/sponsors/yumemi #flutterkaigi via @FlutterKaigiのようなURLを取得する
                shareUrl: '',
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_200,
            ),
            const SliverToBoxAdapter(
              child: Footer(),
            ),
          ],
        ),
      ],
    );
  }
}

class _SessionDetailDesktopBody extends StatelessWidget {
  const _SessionDetailDesktopBody({
    required this.sessionModel,
  });

  final SessionModel sessionModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Chip(
                  label: Text(
                    sessionModel.trackName,
                    style: textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onBackground,
                    ),
                  ),
                  backgroundColor: baselineColorScheme.ref.primary.primary40,
                ),
                Spaces.horizontal_16,
                Text(
                  sessionModel.sessionName,
                  style: textTheme.bodyLarge!.copyWith(
                    fontSize: 18,
                    height: 1.33,
                  ),
                ),
              ],
            ),
            Spaces.vertical_40,
            Text(
              sessionModel.title,
              style: textTheme.titleLarge!.copyWith(
                fontSize: 33.75,
                height: 1.15,
              ),
            ),
            Spaces.vertical_16,
            Text(
              sessionModel.time,
              style: textTheme.headlineSmall!.copyWith(
                fontSize: 18,
                height: 1.33,
              ),
            ),
            Spaces.vertical_16,
            SizedBox(
              width: 132,
              height: 40,
              child: OutlinedButton(
                onPressed: () async {
                  final url = Uri.parse(sessionModel.forteeUrl);
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
            Spaces.vertical_40,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            Spaces.vertical_40,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (sessionModel.isSponsor)
                  Column(
                    children: [
                      SponsorDetailLogoCard(
                        assetName: sessionModel.sponsorImage!,
                        cardWidth: 240,
                        cardPadding: 24,
                      ),
                      Spaces.vertical_16,
                    ],
                  ),
                if (sessionModel.isSponsor)
                  Column(
                    children: [
                      Text(
                        sessionModel.sponsorName!,
                        style: textTheme.bodyLarge,
                      ),
                      Spaces.vertical_16,
                    ],
                  ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          NetworkImage(sessionModel.user.thumbnailUrl),
                    ),
                    Spaces.horizontal_8,
                    Text(
                      sessionModel.user.name,
                      style: textTheme.titleMedium!.copyWith(
                        fontSize: 16.5,
                        height: 1.27,
                      ),
                    ),
                  ],
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
                    'https://twitter.com/${sessionModel.twitter}',
                  ),
                  target: LinkTarget.blank,
                  builder: (context, openLink) {
                    return TextButton(
                      onPressed: openLink,
                      child: Text(
                        sessionModel.twitter,
                        style: textTheme.titleMedium,
                      ),
                    );
                  },
                ),
              ],
            ),
            Spaces.vertical_40,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            Spaces.vertical_40,
            Text(
              sessionModel.contents,
              style: textTheme.bodyLarge!.copyWith(
                fontSize: 12,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Sliver extends StatelessWidget {
  const _Sliver({
    required this.child,
    required this.padding,
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding,
      sliver: SliverToBoxAdapter(
        child: child,
      ),
    );
  }
}
