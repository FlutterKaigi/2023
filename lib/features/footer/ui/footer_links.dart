import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final linkTextStyle = Theme.of(context).textTheme.bodyLarge;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceAround,
        spacing: 24,
        children: [
          Tooltip(
            message: 'Code of Conduct',
            child: Link(
              uri: Uri.parse(
                'https://flutterkaigi.github.io/flutterkaigi/Code-of-Conduct.ja.html',
              ),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: Text(
                    'Code of Conduct',
                    style: linkTextStyle,
                  ),
                );
              },
            ),
          ),
          Tooltip(
            message: 'Privacy Policy',
            child: Link(
              uri: Uri.parse(
                'https://flutterkaigi.github.io/flutterkaigi/Privacy-Policy.ja.html',
              ),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: Text(
                    'Privacy Policy',
                    style: linkTextStyle,
                  ),
                );
              },
            ),
          ),
          // const SizedBox(width: 40),
          Tooltip(
            message: 'Contact',
            child: Link(
              uri: Uri.parse(
                'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3',
              ),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: Text(
                    'Contact',
                    style: linkTextStyle,
                  ),
                );
              },
            ),
          ),
          // const SizedBox(width: 40),
          Tooltip(
            message: 'License',
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
          ),
        ],
      ),
    );
  }
}
