import 'package:confwebsite2023/features/top_session/ui/top_session_twitter.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopSessionMobile extends StatelessWidget {
  const TopSessionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      children: [
        FittedBox(
          fit: BoxFit.fill,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 48,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                'OFFLINE',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 64,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              )
            ],
          ),
        ),
        FittedBox(
          fit: BoxFit.fill,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: Text(
              'November 10, 2023',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Flutterをメインに扱う、日本で初開催の技術カンファレンス。\n'
            'FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。',
            textAlign: TextAlign.center,
            style: textTheme.bodyLarge!.copyWith(
              color: colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        const SizedBox(height: 24),
        TopSessionTwitter(
          url: 'https://twitter.com/FlutterKaigi',
          backgroundColor: colorScheme.onPrimary,
          image: Assets.topSession.twitterCheck,
          title: '',
          subTitle: '最新情報をチェック',
          subTitleTextStyle: textTheme.bodyMedium!.copyWith(
            fontSize: 14,
          ),
          isMobile: true,
        ),
        const SizedBox(height: 20),
        TopSessionTwitter(
          url:
              'https://twitter.com/share?hashtags=flutterkaigi&via=FlutterKaigi',
          backgroundColor: Colors.white,
          image: Assets.topSession.twitterTweet,
          title: '',
          subTitle: 'FlutterKaigi 2023をツイート',
          subTitleTextStyle: textTheme.bodyLarge!.copyWith(
            color: colorScheme.inversePrimary,
            fontSize: 14,
          ),
          isMobile: true,
        ),
      ],
    );
  }
}
