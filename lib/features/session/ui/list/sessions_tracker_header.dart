import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme/dimension.dart';
import 'package:confwebsite2023/features/session/data/track.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class SessionsTrackHeader extends StatelessWidget {
  const SessionsTrackHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const leftTrack = Track(name: 'Track１', sort: 1);
    const rightTrack = Track(name: 'Track２', sort: 2);

    return const ResponsiveWidget(
      largeWidget: Column(
        children: [
          Row(
            children: [
              Expanded(child: _TrackCard(leftTrack)),
              Spaces.horizontal_20,
              Expanded(child: _TrackCard(rightTrack)),
            ],
          ),
          Spaces.vertical_40,
        ],
      ),
      smallWidget: SizedBox.shrink(),
    );
  }
}

final class _TrackCard extends StatelessWidget {
  const _TrackCard(this._track);

  final Track _track;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: theme.colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            _track.name,
            style: GoogleFonts.poppins(
              fontSize: 36,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              height: 1.22,
            ),
          ),
        ),
      ),
    );
  }
}
