import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';

class FooterIconButton extends StatelessWidget {
  const FooterIconButton({
    required this.url,
    required this.image,
    required this.padding,
    super.key,
  });

  final String url;
  final String image;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Tooltip(
        message: url,
        child: Link(
          uri: Uri.parse(url),
          target: LinkTarget.blank,
          builder: (context, openLink) {
            return IconButton(
              onPressed: openLink,
              icon: SvgPicture.asset(
                image,
                width: 40,
                height: 40,
              ),
              color: Colors.white,
            );
          },
        ),
      ),
    );
  }
}
