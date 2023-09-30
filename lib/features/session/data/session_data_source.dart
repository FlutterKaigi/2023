import 'dart:convert';

import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_data_source.g.dart';

@Riverpod(keepAlive: true)
SessionDataSource sessionDataSource(SessionDataSourceRef ref) =>
    SessionDataSource();

class SessionDataSource {
  // TODO: flutterkaigi-2023 へ変更
  static const conferenceId = 'flutterkaigi-2022';

  Future<List<Session>> fetchSessions() async {
    final result = await http.get(
      Uri.parse('https://fortee.jp/$conferenceId/api/timetable'),
    );
    // Prevent garbled characters
    final body = utf8.decode(result.bodyBytes);
    final jsonResult = json.decode(body) as Map<String, dynamic>;
    final itemsJson = jsonResult['timetable'] as List<dynamic>;
    return itemsJson
        .map(
          (e) => Session.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }
}
