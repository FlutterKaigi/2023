import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

class TopSessionTwitter extends StatelessWidget {
  const TopSessionTwitter({
    required this.backgroundColor,
    required this.textColor,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.url,
    required this.fontSize,
    super.key,
  });

  final Color backgroundColor;
  final Color textColor;
  final String image;
  final String title;
  final String subTitle;
  final String url;
  final double fontSize;

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
              width: 744,
              height: 64,
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
                  const SizedBox(width: 20),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 22,
                      color: textColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.50,
                    ),
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
