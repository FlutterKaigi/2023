import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';

class FooterIcon extends StatelessWidget {
  const FooterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.zero,
          child: Tooltip(
            message: 'https://twitter.com/FlutterKaigi',
            child: Link(
              uri: Uri.parse('https://twitter.com/FlutterKaigi'),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return IconButton(
                  onPressed: openLink,
                  icon: SvgPicture.asset(
                    Assets.icon.twitter,
                    width: 40,
                    height: 40,
                  ),
                  color: Colors.white,
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Tooltip(
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
                    Assets.icon.github,
                    width: 40,
                    height: 40,
                  ),
                  color: Colors.white,
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Tooltip(
            message: 'https://discord.com/invite/Nr7H8JTJSF',
            child: Link(
              uri: Uri.parse('https://discord.com/invite/Nr7H8JTJSF'),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return IconButton(
                  onPressed: openLink,
                  icon: SvgPicture.asset(
                    Assets.icon.discord,
                    width: 40,
                    height: 40,
                  ),
                  color: Colors.white,
                );
              },
            ),
          ),
        ),
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
                    Assets.icon.medium,
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
