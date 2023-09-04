import 'package:confwebsite2023/core/components/flutter_kaigi_logo.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/model/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SessionOrganizerItem extends StatelessWidget {
  const SessionOrganizerItem({
    required this.session,
    super.key,
  });

  final OrganizerSession session;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              session.title,
              style: GoogleFonts.roboto(
                color: baselineColorScheme.white,
                fontSize: 22,
                fontWeight: FontWeight.w400,
                height: 1.27,
              ),
            ),
            Spaces.vertical_8,
            Row(
              children: [
                const Material(
                  shape: CircleBorder(),
                  color: Colors.purple,
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: FlutterKaigiLogo(
                      style: FlutterKaigiLogoStyle.markOnly,
                    ),
                  ),
                ),
                Spaces.horizontal_8,
                Text(
                  session.title,
                  style: GoogleFonts.roboto(
                    color: baselineColorScheme.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.27,
                  ),
                ),
              ],
            ),
            Spaces.vertical_16,
            Center(
              child: Text(
                '${DateFormat('HH:mm').format(session.startsAt)}'
                '〜'
                '${DateFormat('HH:mm').format(session.endsAt)}',
                style: TextStyle(
                  color: const Color(0xFFD0BCFF),
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
