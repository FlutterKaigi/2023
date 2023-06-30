import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class FooterAge extends StatelessWidget {
  const FooterAge({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final otherYearsLinkTextStyle = theme.textTheme.bodyLarge;
    final otherYearsLinkSlashTextStyle = theme.textTheme.labelLarge;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Semantics(
            label: '2021年のサイト',
            enabled: true,
            readOnly: true,
            child: Link(
              uri: Uri.parse('https://flutterkaigi.jp/2021/'),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: Text(
                    '2021',
                    style: otherYearsLinkTextStyle,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '/',
              style: otherYearsLinkSlashTextStyle,
            ),
          ),
          Semantics(
            label: '2022年のサイト',
            enabled: true,
            readOnly: true,
            child: Link(
              uri: Uri.parse('https://flutterkaigi.jp/2022/'),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: Text(
                    '2022',
                    style: otherYearsLinkTextStyle,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
