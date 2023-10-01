import 'dart:async';

import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

final class TweetButton extends StatelessWidget {
  const TweetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () async {
        final url = Uri.parse(
          'https://twitter.com/share?url=${Uri.base}&hashtags=flutterkaigi&via=FlutterKaigi',
        );
        unawaited(launchUrl(url));
      },
      icon: SvgPicture.asset(
        Assets.icons.twitter,
        width: 18,
        height: 18,
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.onPrimary,
          BlendMode.srcIn,
        ),
      ),
      label: const Text('ツイートする'),
    );
  }
}
