import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceAround,
        spacing: 24,
        children: [
          _Link(
            semanticsLabel: 'Code of Conduct',
            url:
                'https://flutterkaigi.github.io/flutterkaigi/Code-of-Conduct.ja.html',
            text: 'Code of Conduct',
          ),
          _Link(
            semanticsLabel: 'Privacy Policy',
            url:
                'https://flutterkaigi.github.io/flutterkaigi/Privacy-Policy.ja.html',
            text: 'Privacy Policy',
          ),
          _Link(
            semanticsLabel: 'Contact',
            url:
                'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3',
            text: 'Contact',
          ),
          _LicenseLink(),
        ],
      ),
    );
  }
}

class _Link extends StatelessWidget {
  const _Link({
    required this.semanticsLabel,
    required this.url,
    required this.text,
  });

  final String semanticsLabel;
  final String url;
  final String text;

  @override
  Widget build(BuildContext context) {
    final linkTextStyle = Theme.of(context).textTheme.bodyLarge;
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
              style: linkTextStyle,
            ),
          );
        },
      ),
    );
  }
}

class _LicenseLink extends StatelessWidget {
  const _LicenseLink();

  @override
  Widget build(BuildContext context) {
    final linkTextStyle = Theme.of(context).textTheme.bodyLarge;
    return Semantics(
      label: 'License',
      enabled: true,
      readOnly: true,
      child: TextButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute<dynamic>(
              builder: (context) => const LicensePage(),
            ),
          );
        },
        child: Text(
          'License',
          style: linkTextStyle,
        ),
      ),
    );
  }
}
