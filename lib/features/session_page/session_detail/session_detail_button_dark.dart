import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

class SessionDetailButton extends StatelessWidget {
  const SessionDetailButton({
    required this.twitterUrl,
    required this.url,
    super.key,
  });

  final String twitterUrl;
  final String url;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SessionDetailButtonDark(
          icon: SizedBox(
            width: 18,
            height: 18,
            child: SvgPicture.asset(
              Assets.icons.twitter,
              colorFilter: ColorFilter.mode(
                colorScheme.onPrimary,
                BlendMode.srcIn,
              ),
            ),
          ),
          title: 'ツイートする',
          url: twitterUrl,
        ),
        Spaces.horizontal_10,
        SessionDetailButtonDark(
          icon: Icon(
            Icons.copy,
            size: 18,
            color: colorScheme.onPrimary,
          ),
          title: 'URLをコピー',
          url: url,
        ),
      ],
    );
  }
}
