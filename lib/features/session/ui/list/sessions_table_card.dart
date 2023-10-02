import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class SessionsTableCard extends StatelessWidget {
  const SessionsTableCard(this._session, {super.key});

  final Session _session;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final content = _session.map(
      timeslot: (timeslot) {
        return _TimeslotCardContent(timeslot);
      },
      talk: (talk) {
        return _TalkCardContent(talk);
      },
      lunch: (lunch) {
        return const _LunchCardContent();
      },
    );

    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: theme.colorScheme.secondaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: content,
      ),
    );
  }
}

final class _TimeslotCardContent extends StatelessWidget {
  const _TimeslotCardContent(this._timeslot);

  final TimeslotSession _timeslot;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

final class _TalkCardContent extends StatelessWidget {
  const _TalkCardContent(this._talk);

  final TalkSession _talk;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

final class _LunchCardContent extends StatelessWidget {
  const _LunchCardContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Lunch Time',
        style: GoogleFonts.poppins(
          fontSize: 36,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w600,
          height: 1.22,
        ),
      ),
    );
  }
}