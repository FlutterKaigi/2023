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
  return staffs
    ..sort((a, b) => a.displayName.compareTo(b.displayName))
    // SNSをA-z順にソート
    ..map((e) => e.sns..sort((a, b) => a.type.name.compareTo(b.type.name)));
}
