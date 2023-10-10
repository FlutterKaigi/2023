import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionLunchItem extends StatelessWidget {
  const SessionLunchItem({super.key});

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
            'Lunch Time',
            style: GoogleFonts.poppins(
              color: baselineColorScheme.white,
              fontSize: 36,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              height: 1.22,
            ),
          ),
        ),
      ),
    );
  }
}
