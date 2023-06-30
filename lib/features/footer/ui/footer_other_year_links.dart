import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class FooterOtherYearLinks extends StatelessWidget {
  const FooterOtherYearLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          _OtherYearsLink.$2021(),
          _OtherYearsLinkSlash(),
          _OtherYearsLink.$2022(),
        ],
      ),
    );
  }
}

class _OtherYearsLink extends StatelessWidget {
  const _OtherYearsLink.$2021()
      : semanticsLabel = '2021年のサイト',
        url = 'https://flutterkaigi.jp/2021/',
        text = '2021';

  const _OtherYearsLink.$2022()
      : semanticsLabel = '2022年のサイト',
        url = 'https://flutterkaigi.jp/2022/',
        text = '2022';

  final String semanticsLabel;
  final String url;
  final String text;

  @override
  Widget build(BuildContext context) {
    final otherYearsLinkTextStyle = Theme.of(context).textTheme.bodyLarge;
    return Semantics(
      label: semanticsLabel,
      enabled: true,
      readOnly: true,
      child: Link(
        uri: Uri.tryParse(url),
        target: LinkTarget.blank,
        builder: (context, openLink) {
          return TextButton(
            onPressed: openLink,
            child: Text(
              text,
              style: otherYearsLinkTextStyle,
            ),
          );
        },
      ),
    );
  }
}

class _OtherYearsLinkSlash extends StatelessWidget {
  const _OtherYearsLinkSlash();

  @override
  Widget build(BuildContext context) {
    final otherYearsLinkSlashTextStyle = Theme.of(context).textTheme.labelLarge;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        '/',
        style: otherYearsLinkSlashTextStyle,
      ),
    );
  }
}
