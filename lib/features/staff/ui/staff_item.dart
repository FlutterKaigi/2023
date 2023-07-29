import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/ui/sns_icon.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/link.dart';

/// ! StaffItemのレイアウト変更時は、`features/staff/ui/staff_table.dart`の
/// ! `calculateHeightByStaff`も変更すること
class StaffItem extends StatelessWidget {
  const StaffItem({
    required this.staff,
    super.key,
  });

  final Staff staff;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final icon = SizedBox(
      height: 120,
      width: 120,
      child: FittedBox(
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
    );

    final snsIcons = Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      children: staff.sns
          .map(
            (e) => Link(
              target: LinkTarget.blank,
              uri: Uri.tryParse(e.type.prefixUrl + e.value),
              builder: (_, followLink) => SnsIcon(
                snsType: e.type,
                size: 32,
                padding: EdgeInsets.zero,
                iconColor: theme.colorScheme.onPrimaryContainer,
                onPressed: followLink,
              ),
            ),
          )
          .toList(),
    );

    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: theme.colorScheme.secondaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            Spaces.vertical_16,
            Text(
              staff.displayName,
              style: theme.textTheme.titleLarge!.copyWith(
                color: baselineColorScheme.ref.primary.primary100,
              ),
              textAlign: TextAlign.center,
            ),
            Spaces.vertical_8,
            Text(
              staff.introduction,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: baselineColorScheme.ref.primary.primary80,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            snsIcons,
          ],
        ),
      ),
    );
  }
}
