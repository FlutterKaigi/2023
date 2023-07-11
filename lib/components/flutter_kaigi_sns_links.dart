import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme/baseline_color_scheme.dart';
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
              assetName: e.imageAssetName,
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
    required this.assetName,
    required this.url,
    required this.semanticsLabel,
    super.key,
  });

  final String assetName;
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
            icon: SvgPicture.asset(
              assetName,
              width: 40,
              height: 40,
            ),
            color: baselineColorScheme.white,
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

  String get imageAssetName => switch (this) {
        FlutterKaigiSnsLink.twitter => Assets.icons.twitter,
        FlutterKaigiSnsLink.github => Assets.icons.github,
        FlutterKaigiSnsLink.discord => Assets.icons.discord,
        FlutterKaigiSnsLink.medium => Assets.icons.medium,
      };
}
