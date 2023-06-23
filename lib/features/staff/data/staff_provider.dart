import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/data/staff_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_provider.g.dart';

@riverpod
Future<List<Staff>> staffs(StaffsRef ref) =>
    ref.watch(staffDataSourceProvider).fetchStaffItems();
