import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class HeroSectionTwitter extends StatelessWidget {
  const HeroSectionTwitter({
    required this.backgroundColor,
    required this.image,
    required this.iconColor,
    required this.title,
    required this.subTitle,
    required this.url,
    required this.isMobile,
    this.titleTextStyle,
    this.subTitleTextStyle,
    super.key,
  });

  final Color backgroundColor;
  final ImageProvider image;
  final Color iconColor;
  final String title;
  final String subTitle;
  final String url;
  final bool isMobile;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Link(
        uri: Uri.parse(url),
        target: LinkTarget.blank,
        builder: (context, openLink) {
          return GestureDetector(
            onTap: openLink,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Container(
                width: isMobile ? 358 : 744,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: isMobile ? 8 : 12,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: baselineColorScheme.ref.primary.primary90,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: baselineColorScheme.white.withOpacity(0.35),
                      offset: const Offset(0, 2),
                      blurRadius: 16,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        iconColor,
                        BlendMode.srcIn,
                      ),
                      child: Image(
                        image: image,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Spaces.horizontal_20,
                    Text(
                      title,
                      style: titleTextStyle,
                    ),
                    if (isMobile) const SizedBox.shrink() else const Spacer(),
                    Text(
                      subTitle,
                      style: subTitleTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
