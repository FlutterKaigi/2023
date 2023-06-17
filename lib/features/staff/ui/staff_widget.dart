import 'package:confwebsite2023/features/staff/data/staff_repository.dart';
import 'package:confwebsite2023/features/staff/ui/divider_with_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/link.dart';

class StaffWidget extends ConsumerWidget {
  const StaffWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(staffRepositoryProvider);
    final appLocalizations = AppLocalizations.of(context)!;

    return state.when(
      data: (data) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              DividerWithTitle(text: appLocalizations.executive_committee),
              Container(
                alignment: Alignment.center,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: data
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
      },
      error: (error, stackTrace) {
        return Text('エラーが発生しました: $error');
      },
      loading: () {
        return const CircularProgressIndicator.adaptive();
      },
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
    return Link(
      uri: Uri.tryParse(url),
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
                    imageErrorBuilder: (_, __, ___) => const FittedBox(
                      child: Icon(
                        Icons.error,
                      ),
                    ),
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
}
