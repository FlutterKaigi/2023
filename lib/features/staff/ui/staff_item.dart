import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/ui/sns_icon.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/link.dart';

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
      children: [
        ...staff.sns.map(
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
        ),
      ],
    );

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: theme.colorScheme.secondaryContainer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 24,
              right: 24,
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
              ],
            ),
          ),
          const Spacer(),
          Spaces.vertical_16,
          snsIcons,
          Spaces.vertical_16,
        ],
      ),
    );
  }
}
