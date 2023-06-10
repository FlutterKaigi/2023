import 'package:confwebsite2023/core/hooks/use_cms.dart';
import 'package:confwebsite2023/core/models/staff.dart';
import 'package:confwebsite2023/core/widgets/divider_with_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/link.dart';

class StaffSection extends StatelessWidget {
  const StaffSection({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    final cmsHook = useCMS();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          DividerWithTitle(text: appLocalizations.executive_committee),
          Container(
            alignment: Alignment.center,
            child: FutureBuilder<List<StaffItemModel>>(
              future: cmsHook.fetchItems('staff'),
              builder: (
                context,
                snapshot,
              ) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                return Wrap(
                  children: snapshot.data!
                      .map(
                        (e) => SizedBox(
                          height: 128,
                          width: 128,
                          child: StaffItem(
                            name: e.displayName,
                            photo: e.image.src,
                            url: e.twitter,
                          ),
                        ),
                      )
                      .toList(),
                );
              },
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
