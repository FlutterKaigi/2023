import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionTrackHeaderItem extends StatelessWidget {
  const SessionTrackHeaderItem({
    required this.trackId,
    super.key,
  }) : assert(1 <= trackId && trackId <= 2, 'trackIndex must be 1 or 2');

  final int trackId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: theme.colorScheme.secondaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            'Track $trackId',
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontStyle: FontStyle.italic,
              fontSize: 36,
              fontWeight: FontWeight.w600,
              height: 1.22,
            ),
          ),
        ),
      ),
    );
  }
}
