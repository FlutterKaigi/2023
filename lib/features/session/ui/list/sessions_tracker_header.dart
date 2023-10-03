import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme/dimension.dart';
import 'package:confwebsite2023/features/session/data/session_provider.dart';
import 'package:confwebsite2023/features/session/data/track.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SessionsTrackHeader extends ConsumerWidget {
  const SessionsTrackHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tracks = ref.watch(tracksProvider);
    return ResponsiveWidget(
      largeWidget: Column(
        children: [
          Row(
            children: [
              Expanded(child: _TrackCard(tracks.left)),
              Spaces.horizontal_20,
              Expanded(child: _TrackCard(tracks.right)),
            ],
          ),
          Spaces.vertical_40,
        ],
      ),
      smallWidget: const SizedBox.shrink(),
    );
  }
}

final class _TrackCard extends StatelessWidget {
  const _TrackCard(this._track);

  final Track _track;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
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
          child: FittedBox(
            child: Text(
              _track.name,
              maxLines: 1,
              style: textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
