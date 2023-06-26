import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class FooterAge extends StatelessWidget {
  const FooterAge({
    required this.url,
    required this.age,
    super.key,
  });

  final String url;
  final String age;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: url,
      child: Link(
        uri: Uri.parse(url),
        target: LinkTarget.blank,
        builder: (context, openLink) {
          return TextButton(
            onPressed: openLink,
            child: Text(
              age,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          );
        },
      ),
    );
  }
}
