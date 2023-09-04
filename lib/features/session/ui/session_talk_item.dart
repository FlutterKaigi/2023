import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/model/talk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SessionTalkItem extends StatelessWidget {
  const SessionTalkItem({
    required this.talk,
    required this.startsAt,
    required this.endsAt,
    super.key,
  });

  final Talk talk;
  final DateTime startsAt;
  final DateTime endsAt;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: colorScheme.secondaryContainer,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                DecoratedBox(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.5, color: colorScheme.outline),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    color: colorScheme.inversePrimary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 8,
                    ),
                    child: Text('Track ${talk.trackId}'),
                  ),
                ),
                Spaces.horizontal_8,
                Text(
                  'Session${talk.trackId}-${talk.id}',
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            Spaces.vertical_8,
            Text(
              talk.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: GoogleFonts.roboto().fontFamily,
                fontSize: 22,
                fontWeight: FontWeight.w400,
                height: 1.27,
              ),
            ),
            Spaces.vertical_8,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Material(
                //   type: MaterialType.circle,
                //   color: Colors.transparent,
                //   clipBehavior: Clip.antiAlias,
                //   shape: const CircleBorder(),
                //   child: Image.network(
                //     talk.user.thumbnailUrl,
                //     width: 32,
                //     height: 32,
                //   ),
                // ),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(talk.user.thumbnailUrl),
                ),
                Spaces.horizontal_8,
                Text(
                  talk.user.name,
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontSize: 16,
                    color: colorScheme.secondary,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: Text(
                '${DateFormat('HH:mm').format(startsAt)}'
                '〜'
                '${DateFormat('HH:mm').format(endsAt)}',
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
