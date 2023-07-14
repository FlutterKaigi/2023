import 'package:confwebsite2023/core/components/flutter_kaigi_logo.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/hero/ui/hero_section_twitter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSectionMobile extends StatelessWidget {
  const HeroSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      children: [
        const FlutterKaigiLogo(
          style: FlutterKaigiLogoStyle.markOnly,
          size: 180,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'FlutterKaigi 2023',
            style: GoogleFonts.poppins(
              color: baselineColorScheme.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@',
                style: GoogleFonts.poppins(
                  color: baselineColorScheme.white,
                  fontSize: 36,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Text(
                'OFFLINE',
                style: GoogleFonts.poppins(
                  color: baselineColorScheme.white,
                  fontSize: 48,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 24),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'November 10, 2023',
            style: GoogleFonts.poppins(
              color: baselineColorScheme.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 1.5,
              letterSpacing: 0.12,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '2023年、日本国内でFlutterをメインに扱う技術カンファレンス。\n'
            'FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。',
            textAlign: TextAlign.center,
            style: textTheme.bodyLarge!.copyWith(
              color: colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        const SizedBox(height: 24),
        HeroSectionTwitter(
          url: 'https://twitter.com/FlutterKaigi',
          backgroundColor: colorScheme.onPrimary,
          icon: Assets.icons.twitter,
          iconColor: baselineColorScheme.white,
          title: '',
          subTitle: '最新情報をチェック',
          subTitleTextStyle: textTheme.bodyMedium,
          isMobile: true,
        ),
        const SizedBox(height: 20),
        HeroSectionTwitter(
          url:
              'https://twitter.com/share?hashtags=flutterkaigi&via=FlutterKaigi',
          backgroundColor: baselineColorScheme.ref.primary.primary90,
          icon: Assets.icons.twitter,
          iconColor: baselineColorScheme.ref.primary.primary40,
          title: '',
          subTitle: 'FlutterKaigi 2023をツイート',
          subTitleTextStyle: textTheme.bodyLarge!.copyWith(
            color: baselineColorScheme.ref.primary.primary40,
          ),
          isMobile: true,
        ),
      ],
    );
  }
}
