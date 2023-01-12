import 'package:confwebsite2023/data/link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

class LinkModel {
  LinkModel(this.name, this.url);

  final String name;
  final String url;
}

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> socialItem() {
      return kSocialLinks.map((link) {
        return Link(
          uri: Uri.parse(link['url']!),
          target: LinkTarget.blank,
          builder: (BuildContext ctx, FollowLink? openLink) {
            return IconButton(
              tooltip: link['url'],
              icon: SvgPicture.asset(
                '/${link['name']}.svg',
                width: 60,
              ),
              onPressed: openLink,
              mouseCursor: SystemMouseCursors.click,
            );
          },
        );
      }).toList();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[...socialItem()],
    );
  }
}
