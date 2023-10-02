import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/core/theme/dimension.dart';
import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:confwebsite2023/features/session/data/speaker.dart';
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final title = Text(
      _timeslot.title,
      style: textTheme.titleLarge?.copyWith(
        color: colorScheme.onSecondaryContainer,
      ),
    );

    final Widget profileBody;
    if (_timeslot.speaker case final Speaker speaker) {
      profileBody = Column(
        children: [
          Spaces.vertical_8,
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(speaker.avatarUrl),
              ),
              Spaces.horizontal_8,
              Text(
                speaker.name,
                style: textTheme.titleMedium?.copyWith(
                  color: colorScheme.onSecondaryContainer,
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      profileBody = const SizedBox.shrink();
    }

    final timeText = Center(
      child: Text(
        _timeslot.timeRangeShortText,
        style: textTheme.bodyLarge?.copyWith(
          color: baselineColorScheme.ref.primary.primary80,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        profileBody,
        Spaces.vertical_16,
        timeText,
      ],
    );
  }
}

final class _TalkCardContent extends StatelessWidget {
  const _TalkCardContent(this._talk);

  final TalkSession _talk;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final trackChip = DecoratedBox(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: colorScheme.outline),
          borderRadius: BorderRadius.circular(8),
        ),
        color: baselineColorScheme.ref.primary.primary40
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 8,
        ),
        child: Text(
          _talk.track.name,
          style: textTheme.labelLarge?.copyWith(
            color: colorScheme.onBackground,
          ),
        ),
      ),
    );

    final title = Text(
      _talk.title,
      style: textTheme.titleLarge?.copyWith(
        color: colorScheme.onSecondaryContainer,
      ),
    );

    final profileBody = Row(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(_talk.speaker.avatarUrl),
        ),
        Spaces.horizontal_8,
        Text(
          _talk.speaker.name,
          style: textTheme.titleMedium?.copyWith(
            color: colorScheme.onSecondaryContainer,
          ),
        ),
      ],
    );

    final timeText = Center(
      child: Text(
        _talk.timeRangeShortText,
        style: textTheme.bodyLarge?.copyWith(
          color: baselineColorScheme.ref.primary.primary80,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        trackChip,
        Spaces.vertical_8,
        title,
        Spaces.vertical_8,
        profileBody,
        Spaces.vertical_16,
        timeText,
      ],
    );
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
