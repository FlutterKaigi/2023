import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

class TopSessionTwitter extends StatelessWidget {
  const TopSessionTwitter({
    required this.backgroundColor,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.url,
    required this.isMobile,
    this.titleTextStyle,
    this.subTitleTextStyle,
    super.key,
  });

  final Color backgroundColor;
  final String image;
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
            child: Container(
              width: isMobile ? 358 : 744,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.white),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset(image),
                  ),
                  SizedBox(width: isMobile ? 10 : 20),
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
          );
        },
      ),
    );
  }
}
