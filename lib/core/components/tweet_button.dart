import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

final class TweetButton extends StatelessWidget {
  const TweetButton({
    required this.shareUrl,
    super.key,
  });

  final String shareUrl;

  @override
  Widget build(BuildContext context) => Link(
        uri: Uri.parse(
          'https://twitter.com/share?url=$shareUrl&hashtags=flutterkaigi&via=FlutterKaigi',
        ),
        target: LinkTarget.blank,
        builder: (context, openLink) {
          return FilledButton.icon(
            onPressed: openLink,
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
        },
      );
}
