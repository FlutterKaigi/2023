import 'package:confwebsite2023/core/foundation/iterable_ex.dart';
import 'package:confwebsite2023/core/theme/dimension.dart';
import 'package:confwebsite2023/features/session/model/session.dart';
import 'package:confwebsite2023/features/session/ui/session_talk_item.dart';
import 'package:flutter/material.dart';

class SessionTalksItem extends StatelessWidget {
  SessionTalksItem({
    required this.session,
    super.key,
  }) : assert(
          session.talks.isNotEmpty && session.talks.length <= 2,
          'talksSession.talks.length must be less than or equal to 2',
        );

  final TalksSession session;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...session.talks
              .map<Widget>(
                (talk) => Expanded(
                  child: SessionTalkItem(
                    talk: talk,
                    startsAt: session.startsAt,
                    endsAt: session.endsAt,
                  ),
                ),
              )
              .insertingEach(() => Spaces.horizontal_40),
        ],
      ),
    );
  }
}
