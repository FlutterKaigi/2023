import 'package:confwebsite2023/features/session/model/talk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session.organizer({
    required String title,
    required DateTime startsAt,
    required DateTime endsAt,
  }) = OrganizerSession;

  const factory Session.talks({
    required List<Talk> talks,
    required DateTime startsAt,
    required DateTime endsAt,
  }) = TalksSession;

  const factory Session.lunch() = LunchSession;
}
