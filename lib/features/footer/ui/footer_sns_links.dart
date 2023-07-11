import 'package:confwebsite2023/core/theme/baseline_color_scheme.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          icon: Assets.icons.twitter,
        ),
        const SizedBox(width: 40),
        _SnsLink(
          semanticsLabel: 'FlutterKaigiのGitHub',
          linkUrl: 'https://github.com/FlutterKaigi',
          icon: Assets.icons.github,
        ),
        const SizedBox(width: 40),
        _SnsLink(
          semanticsLabel: 'FlutterKaigiのDiscord',
          linkUrl: 'https://discord.com/invite/Nr7H8JTJSF',
          icon: Assets.icons.discord,
        ),
        const SizedBox(width: 40),
        _SnsLink(
          semanticsLabel: 'FlutterKaigiのMedium',
          linkUrl: 'https://medium.com/flutterkaigi',
          icon: Assets.icons.medium,
        ),
      ],
    );
  }
}

class _SnsLink extends StatelessWidget {
  const _SnsLink({
    required this.semanticsLabel,
    required this.linkUrl,
    required this.icon,
  });

  final String semanticsLabel;
  final String linkUrl;
  final String icon;

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
            icon: SvgPicture.asset(
              icon,
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
