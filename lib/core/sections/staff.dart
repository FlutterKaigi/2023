import 'package:confwebsite2023/core/widgets/divider_with_title.dart';
import 'package:confwebsite2023/data/staff.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/link.dart';

class StaffSection extends StatelessWidget {
  const StaffSection({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    kStaffList.sort((a, b) => (a['name'] ?? '').compareTo(b['name'] ?? ''));

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          DividerWithTitle(text: appLocalizations.executive_committee),
          Container(
            alignment: Alignment.center,
            child: Wrap(
              children: kStaffList
                  .map(
                    (e) => SizedBox(
                      height: 128,
                      width: 128,
                      child: StaffItem(
                        name: e['name'] ?? '',
                        photo: e['photo'] ?? '',
                        url: e['url'] ?? '',
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class StaffItem extends StatelessWidget {
  const StaffItem({
    super.key,
    required this.name,
    required this.photo,
    required this.url,
  });
  final String name;
  final String photo;
  final String url;

  @override
  Widget build(BuildContext context) {
    // final image = (photo.isNotEmpty
    //     ? AssetImage(photo)
    //     : const Svg(Assets.flutterkaigiLog)) as ImageProvider;

    final image = (photo.isNotEmpty && validUrl(photo)
        ? NetworkImage(photo)
        : const Svg(Assets.flutterkaigiLogo)) as ImageProvider;

    return Link(
      uri: Uri.parse(url),
      target: LinkTarget.blank,
      builder: (BuildContext ctx, FollowLink? openLink) {
        return InkWell(
          onTap: openLink,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 64,
                width: 64,
                child: ClipOval(
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    image: image,
                    placeholder: MemoryImage(kTransparentImage),
                  ),
                ),
              ),
              FittedBox(child: Text(name)),
            ],
          ),
        );
      },
    );
  }

  bool validUrl(String url) {
    try {
      Uri.parse(url);
    } on FormatException catch (_) {
      return false;
    }
    return true;
  }
}
