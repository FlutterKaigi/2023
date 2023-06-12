import 'package:confwebsite2023/features/staff/component/staff.dart';
import 'package:confwebsite2023/features/staff/viewmodel/staff_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StaffWidget extends ConsumerWidget {
  const StaffWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(staffViewModelProvider);
    return state.when(
      data: (data) {
        return StaffSection(staffItems: data);
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
