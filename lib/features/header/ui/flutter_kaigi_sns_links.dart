import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';

class FlutterKaigiSnsLinks extends StatelessWidget {
  const FlutterKaigiSnsLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 40,
      children: FlutterKaigiSnsLink.values
          .map(
            (e) => SnsIconWidget(
              image: e.image,
              semanticsLabel: e.semanticsLabel,
              url: e.url,
            ),
          )
          .toList(),
    );
  }
}

class SnsIconWidget extends StatelessWidget {
  const SnsIconWidget({
    required this.image,
    required this.url,
    required this.semanticsLabel,
    super.key,
  });

  final ImageProvider image;
  final String url;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticsLabel,
      enabled: true,
      child: Link(
        uri: Uri.tryParse(url),
        target: LinkTarget.blank,
        builder: (context, openLink) {
          return IconButton(
            onPressed: openLink,
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                baselineColorScheme.white,
                BlendMode.srcIn,
              ),
              child: Image(
                image: image,
                height: 40,
                width: 40,
              ),
            ),
          );
        },
      ),
    );
  }
}

enum FlutterKaigiSnsLink {
  twitter(
    'https://twitter.com/FlutterKaigi',
    'FlutterKaigiのTwitter',
  ),
  github(
    'https://github.com/FlutterKaigi',
    'FlutterKaigiのGitHub',
  ),
  discord(
    'https://discord.com/invite/Nr7H8JTJSF',
    'FlutterKaigiのDiscord',
  ),
  medium(
    'https://medium.com/flutterkaigi',
    'FlutterKaigiのMedium',
  );

  const FlutterKaigiSnsLink(
    this.url,
    this.semanticsLabel,
  );
  final String url;
  final String semanticsLabel;

  ImageProvider get image => switch (this) {
        FlutterKaigiSnsLink.twitter => Assets.icons.twitter.provider(),
        FlutterKaigiSnsLink.github => Assets.icons.github.provider(),
        FlutterKaigiSnsLink.discord => Assets.icons.discord.provider(),
        FlutterKaigiSnsLink.medium => Assets.icons.medium.provider(),
      };
}
