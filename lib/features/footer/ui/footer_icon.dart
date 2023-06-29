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
                icon: SvgPicture.asset(
                  Assets.icons.twitter,
                  width: 40,
                  height: 40,
                ),
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
                icon: SvgPicture.asset(
                  Assets.icons.github,
                  width: 40,
                  height: 40,
                ),
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
                icon: SvgPicture.asset(
                  Assets.icons.discord,
                  width: 40,
                  height: 40,
                ),
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
                  icon: SvgPicture.asset(
                    Assets.icons.medium,
                    width: 40,
                    height: 40,
                  ),
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
