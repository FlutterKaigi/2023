import 'package:confwebsite2023/features/staff/components/divider_with_title.dart';
import 'package:confwebsite2023/features/staff/models/staff_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/link.dart';

class StaffSection extends StatelessWidget {
  const StaffSection({
    required this.staffItems,
    super.key,
  });

  final List<StaffItemModel> staffItems;

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          DividerWithTitle(text: appLocalizations.executive_committee),
          Container(
            alignment: Alignment.center,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: staffItems
                  .map(
                    (e) => SizedBox(
                      height: 128,
                      width: 128,
                      child: StaffItem(
                        name: e.displayName,
                        photo: e.image.src,
                        url: 'https://twitter.com/${e.twitter}',
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
    required this.name,
    required this.photo,
    required this.url,
    super.key,
  });
  final String name;
  final String photo;
  final String url;

  @override
  Widget build(BuildContext context) {
    // final image = (photo.isNotEmpty && validUrl(photo)
    //     ? NetworkImage(photo)
    //     : const Svg(Assets.flutterkaigiLogo)) as ImageProvider;

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
                    image: NetworkImage(photo),
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
