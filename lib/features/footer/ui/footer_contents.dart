import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class FooterContents extends StatelessWidget {
  const FooterContents({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: const Text(
                    'Code of Conduct',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.50,
                    ),
                  ),
                );
              },
            ),
          ),
          // const SizedBox(width: 40),
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
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.50,
                    ),
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
                  child: const Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.50,
                    ),
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
              child: const Text(
                'License',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
