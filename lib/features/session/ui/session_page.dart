import 'package:confwebsite2023/core/foundation/iterable_ex.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/model/session.dart';
import 'package:confwebsite2023/features/session/model/talk.dart';
import 'package:confwebsite2023/features/session/model/talk_user.dart';
import 'package:confwebsite2023/features/session/ui/session_lunch_item.dart';
import 'package:confwebsite2023/features/session/ui/session_organizer_item.dart';
import 'package:confwebsite2023/features/session/ui/session_talks_item.dart';
import 'package:confwebsite2023/features/session/ui/session_track_header_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final organizerSample = OrganizerSession(
  title: '開会の挨拶',
  startsAt: DateTime(2023, 11, 10, 10),
  endsAt: DateTime(2023, 11, 10, 10, 10),
);

final talksSample = TalksSession(
  talks: List.generate(
    2,
    (index) => Talk(
      id: (index + 1).toString(),
      trackId: index + 1,
      title: 'サンプルについて考える',
      user: const TalkUser(
        name: 'Flutter 太郎',
        thumbnailUrl: 'https://avatars.githubusercontent.com/u/12345678?v=4',
      ),
    ),
  ),
  startsAt: DateTime(2023, 11, 10, 11, 10),
  endsAt: DateTime(2023, 11, 10, 11, 55),
);

final sessions = [
  organizerSample,
  organizerSample,
  talksSample,
  const LunchSession(),
  talksSample,
  talksSample,
  talksSample,
  organizerSample,
];

class SessionPage extends StatelessWidget {
  const SessionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 800,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF602678),
                  Color(0x004B0082),
                ],
              ),
            ),
          ),
        ),
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverMainAxisGroup(
              slivers: [
                SliverCrossAxisGroup(
                  slivers: [
                    ...List<Widget>.generate(
                      2,
                      (index) {
                        final trackId = index + 1;
                        return SliverCrossAxisExpanded(
                          flex: 1,
                          sliver: SliverToBoxAdapter(
                            child: SessionTrackHeaderItem(
                              trackId: trackId,
                            ),
                          ),
                        );
                      },
                    ).insertingEach(
                      () => const SliverConstrainedCrossAxis(
                        maxExtent: 40,
                        sliver: SliverToBoxAdapter(
                          child: SizedBox.shrink(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SliverToBoxAdapter(
                  child: Spaces.vertical_20,
                ),
                ...sessions
                    .map<Widget>(
                      (session) => session.map<Widget>(
                        organizer: (organizerSession) {
                          return SliverToBoxAdapter(
                            child: SessionOrganizerItem(
                              session: organizerSession,
                            ),
                          );
                        },
                        talks: (talksSession) {
                          return SliverToBoxAdapter(
                            child: SessionTalksItem(
                              session: talksSession,
                            ),
                          );
                        },
                        lunch: (lunchSession) {
                          return const SliverToBoxAdapter(
                            child: SessionLunchItem(),
                          );
                        },
                      ),
                    )
                    .insertingEach(
                      () => const SliverToBoxAdapter(
                        child: Spaces.vertical_20,
                      ),
                    ),
                const SliverToBoxAdapter(
                  child: Spaces.vertical_20,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
