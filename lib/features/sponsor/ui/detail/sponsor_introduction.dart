import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/ui/detail/sponsor_detail_logo_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

final class SponsorIntroduction extends StatelessWidget {
  const SponsorIntroduction({
    required this.assetName,
    required this.cardWidth,
    required this.cardPadding,
    required this.name,
    required this.url,
    required this.introduction,
    super.key,
  });

  final String assetName;
  final double cardWidth;
  final double cardPadding;
  final String name;
  final String url;
  final String introduction;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        SponsorDetailLogoCard(
          assetName: assetName,
          cardWidth: cardWidth,
          cardPadding: cardPadding,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: textTheme.headlineLarge,
                ),
                Spaces.vertical_16,
                Transform.translate(
                  offset: const Offset(-16, 0),
                  child: Link(
                    uri: Uri.parse(url),
                    target: LinkTarget.blank,
                    builder: (_, followLink) => TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        alignment: Alignment.centerLeft,
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(
                              color: baselineColorScheme.sys.dark.onBackground,
                            ),
                      ),
                      onPressed: followLink,
                      child: Text(url),
                    ),
                  ),
                ),
                Spaces.vertical_16,
                Text(
                  introduction,
                  style: textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
