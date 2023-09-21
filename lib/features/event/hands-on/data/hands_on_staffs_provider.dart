import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/data/staff_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hands_on_staffs_provider.g.dart';

@riverpod
Future<List<Staff>> handsOnStaff(HandsOnStaffRef ref) async {
  final staffs = await ref.watch(staffsProvider.future);
  const handsOnTeamDisplayNames = ['okaryo', 'ちっぴー', '兼高理恵 (robo)', 'jiyuujin'];
  return staffs
      .where((staff) => handsOnTeamDisplayNames.contains(staff.displayName))
      .toList();
}
