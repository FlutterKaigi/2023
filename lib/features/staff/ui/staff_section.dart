import 'dart:math';

import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/data/staff_provider.dart';
import 'package:confwebsite2023/features/staff/ui/divider_with_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';

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
    final state = ref.watch(sortedStaffsProvider);
    return state.when(
      data: (data) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // 横幅に合わせて Maxで表示できる数を計算
              final crossAxisCount =
                  max(2, constraints.maxWidth ~/ _StaffItem.width);
              final staffs = data.chunked(crossAxisCount);
              return SizedBox(
                width: constraints.maxWidth,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final staffsInRow in staffs)
                      FittedBox(
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: staffsInRow
                                .map((e) => _StaffItem(staff: e))
                                .toList(),
                          ),
                        ),
                      ),
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

  static const width = 212.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: theme.colorScheme.secondaryContainer,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
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
              Text(
                staff.displayName,
                style: theme.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                staff.introduction,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.primary.withOpacity(0.8),
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          ),
        ),
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
}
