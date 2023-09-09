import 'package:confwebsite2023/core/theme/baseline_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionTrack extends StatelessWidget {
  const SessionTrack({
    required this.title,
    required this.isMobile,
    super.key,
  });

  final String title;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return isMobile
        ? Container(
            width: 80,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: baselineColorScheme.ref.primary.primary40,
            ),
            child: Center(
              child: Text(
                title,
                style: textTheme.labelLarge!.copyWith(
                  color: colorScheme.onBackground,
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              width: 79,
              height: 32,
              color: colorScheme.primaryContainer,
              child: Center(
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 27,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
            ),
          );
  }
}
