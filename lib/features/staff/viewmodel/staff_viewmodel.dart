import 'package:confwebsite2023/features/staff/data/staff_data_source.dart';
import 'package:confwebsite2023/features/staff/models/staff_item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_viewmodel.g.dart';

@riverpod
Future<List<StaffItemModel>> staffViewModel(StaffViewModelRef ref) =>
    ref.watch(staffDataSourceProvider).fetchStaffItems();
