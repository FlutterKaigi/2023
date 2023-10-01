import 'package:collection/collection.dart';
import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:confwebsite2023/features/session/data/session_data_source.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Session>> sessions(SessionsRef ref) =>
    ref.watch(sessionDataSourceProvider).fetchSessions();

@riverpod
String sessionId(SessionIdRef ref) => throw UnimplementedError();

@Riverpod(
  dependencies: [
    sessions,
    sessionId,
  ],
)
Future<Session> session(SessionRef ref) async {
  final sessionId = ref.watch(sessionIdProvider);
  final sessions = await ref.watch(sessionsProvider.future);
  return sessions.firstWhere((s) => s is TalkSession && s.uuid == sessionId);
}

@Riverpod(
  dependencies: [
    allSponsors,
  ],
)
Sponsor? sessionSponsor(SessionSponsorRef ref, Session session) {
  final String? sponsorName;
  if (session is TalkSession && session.isSponsored) {
    final speakerName = session.speaker.name;
    if (speakerName.contains('ゆめみ')) {
      sponsorName = 'yumemi';
    } else if (speakerName.contains('出前館')) {
      sponsorName = 'demaecan';
    } else if (speakerName.contains('ナビタイムジャパン')) {
      sponsorName = 'navitime';
    } else {
      throw AssertionError('Sponsor is not found');
    }
  } else {
    sponsorName = null;
  }
  if (sponsorName == null) {
    return null;
  }

  return ref.watch(
    allSponsorsProvider.select(
      (sponsors) => sponsors.firstWhereOrNull((s) => s.name == sponsorName),
    ),
  );
}
