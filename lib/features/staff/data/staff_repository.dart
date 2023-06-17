import 'package:confwebsite2023/features/staff/data/staff_data_source.dart';
import 'package:confwebsite2023/features/staff/data/staff_item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_repository.g.dart';

@riverpod
Future<List<StaffItemModel>> staffRepository(StaffRepositoryRef ref) =>
    ref.watch(staffDataSourceProvider).fetchStaffItems();
