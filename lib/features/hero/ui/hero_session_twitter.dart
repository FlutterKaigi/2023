import 'package:confwebsite2023/theme/baseline_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

class HeroSectionTwitter extends StatelessWidget {
  const HeroSectionTwitter({
    required this.backgroundColor,
    required this.icon,
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
  final String icon;
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
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: SvgPicture.asset(
                        icon,
                        colorFilter: ColorFilter.mode(
                          iconColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
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
