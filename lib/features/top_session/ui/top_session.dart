import 'package:confwebsite2023/components/responsive_widget.dart';
import 'package:confwebsite2023/features/top_session/ui/top_session_twitter.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TopSession extends StatelessWidget {
  const TopSession({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeWidget: TopSessionDeskTop(),
      smallWidget: TopSessionMobile(),
    );
  }
}

class TopSessionDeskTop extends StatelessWidget {
  const TopSessionDeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '@',
              style: TextStyle(
                color: Colors.white,
                fontSize: 100,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'OFFLINE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 120,
                fontStyle: FontStyle.italic,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
              ),
            )
          ],
        ),
        const Text(
          'November 10, 2023',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.16,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Flutterをメインに扱う、日本で初開催の技術カンファレンス。\n'
          'FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFEADDFF),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.50,
          ),
        ),
        const SizedBox(height: 24),
        TopSessionTwitter(
          url: 'https://twitter.com/FlutterKaigi',
          backgroundColor: const Color(0xFF381E72),
          textColor: Colors.white,
          image: Assets.topSession.twitterCheck,
          title: '@FlutterKaigi',
          subTitle: '最新情報を公式Twitterでチェック',
          fontSize: 16,
        ),
        const SizedBox(height: 20),
        TopSessionTwitter(
          url:
              'https://twitter.com/share?url=https://example.com&text=#flutterkaigi',
          backgroundColor: Colors.white,
          textColor: const Color(0xFF381E72),
          image: Assets.topSession.twitterTweet,
          title: '#flutterkaigi',
          subTitle: 'FlutterKaigi 2023をツイート',
          fontSize: 16,
        ),
      ],
    );
  }
}

class TopSessionMobile extends StatelessWidget {
  const TopSessionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '@',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'OFFLINE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 64,
                fontStyle: FontStyle.italic,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
              ),
            )
          ],
        ),
        const Text(
          'November 10, 2023',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.16,
          ),
        ),
        const SizedBox(height: 24),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Flutterをメインに扱う、日本で初開催の技術カンファレンス。\n'
            'FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFEADDFF),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.50,
            ),
          ),
        ),
        const SizedBox(height: 24),
        TopSessionTwitter(
          url: 'https://twitter.com/FlutterKaigi',
          backgroundColor: const Color(0xFF381E72),
          textColor: Colors.white,
          image: Assets.topSession.twitterCheck,
          title: '',
          subTitle: '最新情報を公式Twitterでチェック',
          fontSize: 14,
        ),
        const SizedBox(height: 20),
        TopSessionTwitter(
          url:
              'https://twitter.com/share?url=https://example.com&text=#flutterkaigi',
          backgroundColor: Colors.white,
          textColor: const Color(0xFF381E72),
          image: Assets.topSession.twitterTweet,
          title: '',
          subTitle: 'FlutterKaigi 2023をツイート',
          fontSize: 14,
        ),
      ],
    );
  }
}
