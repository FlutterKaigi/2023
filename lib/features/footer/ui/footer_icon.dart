import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';

class FooterIcon extends StatelessWidget {
  const FooterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Tooltip(
          message: 'https://twitter.com/FlutterKaigi',
          child: Link(
            uri: Uri.parse('https://twitter.com/FlutterKaigi'),
            target: LinkTarget.blank,
            builder: (context, openLink) {
              return IconButton(
                onPressed: openLink,
                icon: Icons(icon: Assets.icons.twitter),
                color: Colors.white,
              );
            },
          ),
        ),
        const SizedBox(width: 40),
        Tooltip(
          message: 'https://github.com/FlutterKaigi',
          child: Link(
            uri: Uri.parse(
              'https://github.com/FlutterKaigi',
            ),
            target: LinkTarget.blank,
            builder: (context, openLink) {
              return IconButton(
                onPressed: openLink,
                icon: Icons(icon: Assets.icons.github),
                color: Colors.white,
              );
            },
          ),
        ),
        const SizedBox(width: 40),
        Tooltip(
          message: 'https://discord.com/invite/Nr7H8JTJSF',
          child: Link(
            uri: Uri.parse('https://discord.com/invite/Nr7H8JTJSF'),
            target: LinkTarget.blank,
            builder: (context, openLink) {
              return IconButton(
                onPressed: openLink,
                icon: Icons(icon: Assets.icons.discord),
                color: Colors.white,
              );
            },
          ),
        ),
        const SizedBox(width: 40),
        Padding(
          padding: EdgeInsets.zero,
          child: Tooltip(
            message: 'https://medium.com/flutterkaigi',
            child: Link(
              uri: Uri.parse(
                'https://medium.com/flutterkaigi',
              ),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return IconButton(
                  onPressed: openLink,
                  icon: Icons(icon: Assets.icons.medium),
                  color: Colors.white,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class Icons extends StatelessWidget {
  const Icons({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: 40,
      height: 40,
    );
  }
}
