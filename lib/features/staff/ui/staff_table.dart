import 'package:confwebsite2023/core/foundation/iterable_ex.dart';
import 'package:confwebsite2023/features/staff/data/staff_provider.dart';
import 'package:confwebsite2023/features/staff/ui/staff_row.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StaffTable extends ConsumerWidget {
  const StaffTable({
    super.key,
  });

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
              final itemCount = StaffRow.calculateItemCount(
                maxWidth: constraints.maxWidth,
              );
              final itemWidth = StaffRow.calculateItemWidth(
                maxWidth: constraints.maxWidth,
              );

              final chunkedAllStaffs = data.chunked(itemCount);
              return SizedBox(
                width: constraints.maxWidth,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...chunkedAllStaffs.map<Widget>(
                      (staffsInRow) => IntrinsicHeight(
                        child: StaffRow(
                          staffs: staffsInRow,
                          itemWidth: itemWidth,
                        ),
                      ),
                    ),
                  ].insertingEach(
                    () => const SizedBox(height: StaffRow.spacing),
                  ),
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

extension _ListChunkExtension<T> on List<T> {
  List<List<T>> chunked(int size) {
    final result = <List<T>>[];
    for (var i = 0; i < length; i += size) {
      result.add(sublist(i, i + size > length ? length : i + size));
    }
    return result;
  }
}
