import 'package:confwebsite2023/features/top_session/ui/top_session_twitter.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TopSessionMobile extends StatelessWidget {
  const TopSessionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        FittedBox(
          fit: BoxFit.fill,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '@',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 48,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                //TODO Styleを入れる。
                // style: TextStyle(
                //   color: Colors.white,
                //   fontSize: 48,
                //   fontStyle: FontStyle.italic,
                //   fontWeight: FontWeight.w700,
                // ),
              ),
              Text(
                'OFFLINE',
                //TODO Styleを入れる。
                // style: TextStyle(
                //   color: Colors.white,
                //   fontSize: 64,
                //   fontStyle: FontStyle.italic,
                //   fontFamily: 'Poppins',
                //   fontWeight: FontWeight.w800,
                // ),
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 64,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800,
                    ),
              )
            ],
          ),
        ),
        FittedBox(
          fit: BoxFit.fill,
          child: Text(
            'November 10, 2023',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.16,
                ),
            //TODO Styleを入れる。
            // style: TextStyle(
            //   fontSize: 24,
            //   fontWeight: FontWeight.w500,
            //   letterSpacing: 0.16,
            // ),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Flutterをメインに扱う、日本で初開催の技術カンファレンス。\n'
            'FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。',
            textAlign: TextAlign.center,
            style: theme.bodyLarge!.copyWith(
              color: colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        const SizedBox(height: 24),
        TopSessionTwitter(
          url: 'https://twitter.com/FlutterKaigi',
          backgroundColor: const Color(0xFF381E72),
          image: Assets.topSession.twitterCheck,
          title: '',
          subTitle: '最新情報をチェック',
          subTitleTextStyle: theme.bodyMedium!.copyWith(
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
          subTitleTextStyle: theme.bodyLarge!.copyWith(
            color: colorScheme.inversePrimary,
            fontSize: 14,
          ),
          isMobile: true,
        ),
      ],
    );
  }
}
