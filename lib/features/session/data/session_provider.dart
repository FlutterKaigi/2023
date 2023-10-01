import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:confwebsite2023/features/session/data/session_data_source.dart';
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
