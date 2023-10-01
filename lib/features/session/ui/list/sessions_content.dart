import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/data/session_provider.dart';
import 'package:confwebsite2023/features/session/data/track.dart';
import 'package:confwebsite2023/features/session/ui/list/sessions_caution.dart';
import 'package:confwebsite2023/features/session/ui/list/sessions_section_header.dart';
import 'package:confwebsite2023/features/session/ui/list/sessions_table.dart';
import 'package:confwebsite2023/features/session/ui/list/sessions_tracker_header.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SessionsContent extends ConsumerWidget {
  const SessionsContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessions = ref.watch(sessionsProvider);

    return sessions.when(
      data: (sessions) {
        const leftTrack = Track(name: 'Track１', sort: 1);
        const rightTrack = Track(name: 'Track２', sort: 2);

        return Column(
          children: [
            const SessionsSectionHeader(),
            Spaces.vertical_80,
            const SessionsTrackHeader(
              leftTrack: leftTrack,
              rightTrack: rightTrack,
            ),
            SessionsTable(sessions),
            Spaces.vertical_80,
            const SessionsCaution(),
          ],
        );
      },
      error: (error, _) {
        return Center(child: Text('エラーが発生しました: $error'));
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
