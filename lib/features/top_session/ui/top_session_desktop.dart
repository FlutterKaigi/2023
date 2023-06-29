import 'package:confwebsite2023/features/top_session/ui/top_session_twitter.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:confwebsite2023/theme/baseline_color_scheme.dart';
import 'package:flutter/material.dart';

//TODO フォントサイズの調整→Themeを使う
//TODO FittedBoxを囲む

class TopSessionDesktop extends StatelessWidget {
  const TopSessionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      //TODO PoppinsのfontFamilyが入っていない可能性あり
                      color: Colors.white,
                      fontSize: 100,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              Text(
                'OFFLINE',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      //TODO PoppinsのfontFamilyが入っていない可能性あり
                      color: Colors.white,
                      fontSize: 120,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
        ),
        Text(
          'November 10, 2023',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                //TODO PoppinsのfontFamilyが入っていない可能性あり
                color: Colors.white,
                fontSize: 32,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.16,
              ),
        ),
        const SizedBox(height: 24),
        Text(
          'Flutterをメインに扱う、日本で初開催の技術カンファレンス。\n'
          'FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。',
          textAlign: TextAlign.center,
          style: theme.bodyLarge!.copyWith(
            color: colorScheme.onPrimaryContainer,
          ),
        ),
        const SizedBox(height: 24),
        TopSessionTwitter(
          url: 'https://twitter.com/FlutterKaigi',
          backgroundColor: const Color(0xFF381E72),
          image: Assets.topSession.twitterCheck,
          title: '@FlutterKaigi',
          subTitle: '最新情報を公式Twitterでチェック',
          titleTextStyle: theme.titleLarge,
          subTitleTextStyle: theme.bodyLarge,
          isMobile: false,
        ),
        const SizedBox(height: 20),
        TopSessionTwitter(
          url:
              'https://twitter.com/share?hashtags=flutterkaigi&via=FlutterKaigi',
          backgroundColor: Colors.white,
          image: Assets.topSession.twitterTweet,
          title: '#flutterkaigi',
          subTitle: 'FlutterKaigi 2023をツイート',
          titleTextStyle: theme.titleLarge!.copyWith(
            color: baselineColorScheme.ref.primary.primary40,
          ),
          subTitleTextStyle: theme.bodyLarge!.copyWith(
            color: baselineColorScheme.ref.primary.primary40,
          ),
          isMobile: false,
        ),
      ],
    );
  }
}
