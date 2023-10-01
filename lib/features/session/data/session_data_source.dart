import 'dart:convert';

import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

class SessionDataSource {
  static const conferenceId = 'flutterkaigi-2023';

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
          (e) {
            try {
              return Session.fromJson(e as Map<String, dynamic>);
            } on CheckedFromJsonException catch (e) {
              if (e.key == 'track') {
                // Exclude sessions whose track is not decided, such as
                // substitute sessions.
                return null;
              }
              rethrow;
            }
          },
        )
        .nonNulls
        .toList();
  }
}
