import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/data/staff_provider.dart';
import 'package:confwebsite2023/features/staff/ui/divider_with_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/link.dart';

class StaffSection extends StatelessWidget {
  const StaffSection({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return Column(
      children: [
        DividerWithTitle(text: appLocalizations.executive_committee),
        const _StaffList(),
      ],
    );
  }
}

class _StaffList extends ConsumerWidget {
  const _StaffList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(staffsProvider);
    return state.when(
      data: (data) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: data
                .map(
                  (staff) => _StaffItem(
                    staff: staff,
                  ),
                )
                .toList(),
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

class _StaffItem extends StatelessWidget {
  const _StaffItem({
    required this.staff,
  });
  final Staff staff;

  @override
  Widget build(BuildContext context) {
    final url = 'https://twitter.com/${staff.twitter}';
    final theme = Theme.of(context);
    return Link(
      uri: Uri.tryParse(url),
      target: LinkTarget.blank,
      builder: (BuildContext context, FollowLink? openLink) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: theme.colorScheme.secondaryContainer,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ClipOval(
                    child: FadeInImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(staff.image.src),
                      placeholder: MemoryImage(kTransparentImage),
                      imageErrorBuilder: (_, __, ___) => const FittedBox(
                        child: Icon(
                          Icons.error,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    staff.displayName,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    staff.position ?? ' ',
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.primary.withOpacity(0.8),
                    ),
                  ),
                ),
                const FittedBox(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // TODO(YumNumm): SNS Icons after #26 was merged to main
                      SizedBox(
                        width: 0.1,
                        height: 0.1,
                      ),
                    ],
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
