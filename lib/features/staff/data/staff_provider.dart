import 'package:collection/collection.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/data/staff_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_provider.g.dart';

@riverpod
Future<List<Staff>> staffs(StaffsRef ref) =>
    ref.watch(staffDataSourceProvider).fetchStaffItems();

@riverpod
Future<List<Staff>> sortedStaffs(SortedStaffsRef ref) async {
  final staffs = await ref.watch(staffsProvider.future);
  // staffをA-z順にソート
  final nameSorted = staffs.sortedBy((e) => e.displayName);
  // SNSのtype順にソートし 最大4つに絞る
  final snsSorted = nameSorted.map((staff) {
    final snsSorted = staff.sns
        .sortedBy((e) => e.type.name)
        .sorted((a, b) => a.type == SnsType.url ? 1 : -1);

    return staff.copyWith(sns: snsSorted.take(4).toList());
  });
  return snsSorted.toList();
}
