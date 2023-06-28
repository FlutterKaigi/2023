import 'package:confwebsite2023/components/responsive_widget.dart';
import 'package:confwebsite2023/features/top_session/ui/top_session_twitter.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TopSession extends StatelessWidget {
  const TopSession({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeWidget: _TopSessionDesktop(),
      smallWidget: _TopSessionMobile(),
    );
  }
}

//TODO フォントサイズの調整→Themeを使う
//TODO FittedBoxを囲む

class _TopSessionDesktop extends StatelessWidget {
  const _TopSessionDesktop();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        const FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '@',
                //TODO Styleを入れる。
                // style: TextStyle(
                //   color: Colors.white,
                //   fontSize: 100,
                //   fontStyle: FontStyle.italic,
                //   fontWeight: FontWeight.w700,
                // ),
              ),
              Text(
                'OFFLINE',
                //TODO Styleを入れる。
                // style: TextStyle(
                //   color: Colors.white,
                //   fontSize: 120,
                //   fontStyle: FontStyle.italic,
                //   fontFamily: 'Poppins',
                //   fontWeight: FontWeight.w800,
                // ),
              ),
            ],
          ),
        ),
        const Text(
          'November 10, 2023',
          //TODO Styleを入れる。
          // style: TextStyle(
          //   fontSize: 32,
          //   fontWeight: FontWeight.w500,
          //   letterSpacing: 0.16,
          // ),
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
          width: 744,
          height: 64,
          titleTextStyle: theme.titleLarge,
          subTitleTextStyle: theme.bodyLarge,
        ),
        const SizedBox(height: 20),
        TopSessionTwitter(
          url:
              'https://twitter.com/share?hashtags=flutterkaigi&via=FlutterKaigi',
          backgroundColor: Colors.white,
          image: Assets.topSession.twitterTweet,
          title: '#flutterkaigi',
          subTitle: 'FlutterKaigi 2023をツイート',
          width: 744,
          height: 64,
          titleTextStyle: theme.titleLarge!.copyWith(
            //TODO ここの色がおかしい？
            color: colorScheme.primary.withOpacity(0.4),
          ),
          subTitleTextStyle: theme.bodyLarge!.copyWith(
            //TODO ここの色がおかしい？
            color: colorScheme.primary.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}

class _TopSessionMobile extends StatelessWidget {
  const _TopSessionMobile();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        const FittedBox(
          fit: BoxFit.fill,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '@',
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
              )
            ],
          ),
        ),
        const FittedBox(
          fit: BoxFit.fill,
          child: Text(
            'November 10, 2023',
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
          width: 358,
          height: 56,
          subTitleTextStyle: theme.bodyMedium,
        ),
        const SizedBox(height: 20),
        TopSessionTwitter(
          url:
              'https://twitter.com/share?hashtags=flutterkaigi&via=FlutterKaigi',
          backgroundColor: Colors.white,
          image: Assets.topSession.twitterTweet,
          title: '',
          subTitle: 'FlutterKaigi 2023をツイート',
          width: 358,
          height: 56,
          //TODO ここの色がおかしい？
          subTitleTextStyle: theme.bodyMedium!.copyWith(
            color: colorScheme.primary.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}
