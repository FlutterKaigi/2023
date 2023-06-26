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
    super.key,
  });

  final Color backgroundColor;
  final Color textColor;
  final String image;
  final String title;
  final String subTitle;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Link(
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
            decoration: ShapeDecoration(
              color: backgroundColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
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
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.50,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
