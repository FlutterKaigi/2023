import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/data/session_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SessionsTable extends ConsumerWidget {
  const SessionsTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessions = ref.watch(sessionsProvider);

    return sessions.when(
      data: (sessions) {
        return SliverList.separated(
          itemBuilder: (context, index) {
            return const _SessionsTableRow();
          },
          separatorBuilder: (context, index) {
            return Spaces.vertical_40;
          },
          itemCount: 10,
        );
      },
      error: (error, _) {
        return SliverToBoxAdapter(
          child: Center(child: Text('エラーが発生しました: $error')),
        );
      },
      loading: () {
        return const SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
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
