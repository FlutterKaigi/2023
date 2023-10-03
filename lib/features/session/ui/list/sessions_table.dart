import 'package:collection/collection.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:confwebsite2023/features/session/data/session_provider.dart';
import 'package:confwebsite2023/features/session/ui/list/sessions_table_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SessionsTable extends ConsumerWidget {
  const SessionsTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessionsGroupListsByStartsAt = ref.watch(
      sessionsGroupListsByStartsAtProvider,
    );
    return SliverList.separated(
      itemBuilder: (context, index) {
        final sessions = sessionsGroupListsByStartsAt.elementAt(index);

        final lunch = sessions.whereType<LunchSession>().firstOrNull;
        if (lunch != null) {
          return _SessionsTableRowLunch(lunch);
        }

        final timeslot = sessions.whereType<TimeslotSession>().firstOrNull;
        if (timeslot != null) {
          return _SessionsTableRowTimeSlot(timeslot);
        }

        final talkSessions = sessions.whereType<TalkSession>();
        final track1Talk = talkSessions.firstWhere((s) => s.track.sort == 1);
        final track2Talk = talkSessions.firstWhere((s) => s.track.sort == 2);
        return _SessionsTableRowTalk(
          track1Talk: track1Talk,
          track2Talk: track2Talk,
        );
      },
      separatorBuilder: (context, index) {
        return Spaces.vertical_40;
      },
      itemCount: 10,
    );
  }
}

final class _SessionsTableRowTimeSlot extends StatelessWidget {
  const _SessionsTableRowTimeSlot(this._timeslot);

  final TimeslotSession _timeslot;

  @override
  Widget build(BuildContext context) {
    return SessionsTableCard(_timeslot);
  }
}

final class _SessionsTableRowLunch extends StatelessWidget {
  const _SessionsTableRowLunch(this._lunch);

  final LunchSession _lunch;

  @override
  Widget build(BuildContext context) {
    return SessionsTableCard(_lunch);
  }
}

final class _SessionsTableRowTalk extends StatelessWidget {
  const _SessionsTableRowTalk({
    required TalkSession track1Talk,
    required TalkSession track2Talk,
  })  : _track1Talk = track1Talk,
        _track2Talk = track2Talk;

  final TalkSession _track1Talk;
  final TalkSession _track2Talk;

  @override
  Widget build(BuildContext context) {
    final largeWidget = IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: SessionsTableCard(_track1Talk),
          ),
          Spaces.horizontal_20,
          Expanded(
            child: SessionsTableCard(_track2Talk),
          ),
        ],
      ),
    );
    final smallWidget = Column(
      children: [
        SessionsTableCard(_track1Talk),
        Spaces.vertical_20,
        SessionsTableCard(_track2Talk),
      ],
    );
    return ResponsiveWidget(
      largeWidget: largeWidget,
      smallWidget: smallWidget,
    );
  }
}
