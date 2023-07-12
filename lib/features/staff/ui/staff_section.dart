import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme/app_text_style.dart';
import 'package:confwebsite2023/core/theme/baseline_color_scheme.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/data/staff_provider.dart';
import 'package:confwebsite2023/features/staff/ui/sns_icon.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/link.dart';

class StaffSection extends StatelessWidget {
  const StaffSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Transform.translate(
              offset: const Offset(-SectionHeader.blurRadius, 0),
              child: ResponsiveWidget(
                largeWidget: SectionHeader(
                  text: 'Staff',
                  style: AppTextStyle.pcHeading1,
                ),
                smallWidget: SectionHeader(
                  text: 'Staff',
                  style: AppTextStyle.spHeading1,
                ),
              ),
            ),
          ],
        ),
        const _StaffList(),
      ],
    );
  }
}

class _StaffList extends ConsumerWidget {
  const _StaffList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sortedStaffsProvider);
    return state.when(
      data: (data) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // 余白を考慮しつつ 最大横に何個並べられるかを計算する
              // yを最大横幅 xを横の最大要素数として、
              // y = 171x + 16(x - 1)
              // y - 16 = 187x
              // x = (y - 16) / 187
              final result = ((constraints.maxWidth - 16) / 187).floor();
              final crossAxisCount = switch (result) {
                < 2 => 2,
                > 5 => 5,
                _ => result,
              };
              // 要素の横幅を計算
              final itemWidth =
                  (constraints.maxWidth - 16 * (crossAxisCount - 1)) /
                      crossAxisCount;

              final staffs = data.chunked(crossAxisCount);
              return SizedBox(
                width: constraints.maxWidth,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...staffs
                        .map<Widget>(
                          (staffsInRow) => IntrinsicHeight(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: staffsInRow
                                  .map<Widget>(
                                    (e) => SizedBox(
                                      width: itemWidth,
                                      child: _StaffItem(staff: e),
                                    ),
                                  )
                                  .toList()
                                  .joinElement(
                                    const SizedBox(width: _StaffItem.spacing),
                                  ),
                            ),
                          ),
                        )
                        .toList()
                        .joinElement(
                          const SizedBox(height: _StaffItem.spacing),
                        ),
                    const SizedBox(height: 165),
                  ],
                ),
              );
            },
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

  static const spacing = 16.0;

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
                const SizedBox(height: 16),
                Text(
                  staff.displayName,
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: baselineColorScheme.ref.primary.primary100,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
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
          const SizedBox(height: 16),
          snsIcons,
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

extension _ListChunkExtension<T> on List<T> {
  List<List<T>> chunked(int size) {
    final result = <List<T>>[];
    for (var i = 0; i < length; i += size) {
      result.add(sublist(i, i + size > length ? length : i + size));
    }
    return result;
  }

  List<T> joinElement(T element) {
    final result = <T>[];
    for (var i = 0; i < length; i++) {
      result.add(this[i]);
      if (i != length - 1) {
        result.add(element);
      }
    }
    return result;
  }
}
