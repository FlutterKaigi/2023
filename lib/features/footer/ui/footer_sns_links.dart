import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class FooterSnsLinks extends StatelessWidget {
  const FooterSnsLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        _SnsLink(
          semanticsLabel: 'FlutterKaigiのTwitter',
          linkUrl: 'https://twitter.com/FlutterKaigi',
          image: Assets.icons.twitter.provider(),
        ),
        Spaces.horizontal_40,
        _SnsLink(
          semanticsLabel: 'FlutterKaigiのGitHub',
          linkUrl: 'https://github.com/FlutterKaigi',
          image: Assets.icons.github.provider(),
        ),
        Spaces.horizontal_40,
        _SnsLink(
          semanticsLabel: 'FlutterKaigiのDiscord',
          linkUrl: 'https://discord.com/invite/Nr7H8JTJSF',
          image: Assets.icons.discord.provider(),
        ),
        Spaces.horizontal_40,
        _SnsLink(
          semanticsLabel: 'FlutterKaigiのMedium',
          linkUrl: 'https://medium.com/flutterkaigi',
          image: Assets.icons.medium.provider(),
        ),
      ],
    );
  }
}

class _SnsLink extends StatelessWidget {
  const _SnsLink({
    required this.semanticsLabel,
    required this.linkUrl,
    required this.image,
  });

  final String semanticsLabel;
  final String linkUrl;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticsLabel,
      enabled: true,
      readOnly: true,
      child: Link(
        uri: Uri.tryParse(linkUrl),
        target: LinkTarget.blank,
        builder: (context, openLink) {
          return IconButton(
            onPressed: openLink,
            icon: ColorFiltered(
              colorFilter:
                  ColorFilter.mode(baselineColorScheme.white, BlendMode.srcIn),
              child: Image(
                image: image,
                width: 40,
                height: 40,
              ),
            ),
          );
        },
      ),
    );
  }
}
