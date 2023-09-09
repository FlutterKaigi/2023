import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class SessionDetailButtonDark extends StatelessWidget {
  const SessionDetailButtonDark({
    required this.icon,
    required this.title,
    required this.url,
    super.key,
  });

  final Widget icon;
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Link(
      uri: Uri.parse(url),
      target: LinkTarget.blank,
      builder: (context, openLink) {
        return GestureDetector(
          onTap: openLink,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Container(
              width: 151,
              height: 40,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: colorScheme.primary,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: colorScheme.onPrimary),
              ),
              child: Row(
                children: [
                  icon,
                  Spaces.horizontal_8,
                  Text(
                    title,
                    style: textTheme.labelLarge!.copyWith(
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
