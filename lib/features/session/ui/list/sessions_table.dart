import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/data/session_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SessionsTable extends ConsumerWidget {
  const SessionsTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessions = ref.watch(sessionsProvider);
    return SliverList.separated(
      itemBuilder: (context, index) {
        return const _SessionsTableRow();
      },
      separatorBuilder: (context, index) {
        return Spaces.vertical_40;
      },
      itemCount: 10,
    );
  }
}

final class _SessionsTableRow extends StatelessWidget {
  const _SessionsTableRow();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
