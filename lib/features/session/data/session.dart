import 'package:confwebsite2023/features/session/data/speaker.dart';
import 'package:confwebsite2023/features/session/data/tag.dart';
import 'package:confwebsite2023/features/session/data/track.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

part 'session.g.dart';

@Freezed(unionKey: 'type')
sealed class Session with _$Session {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Session.timeslot({
    required String uuid,
    required String title,
    required DateTime startsAt,
    required int lengthMin,
    required Track track,
    String? abstract,
  }) = TimeslotSession;

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Session.talk({
    required String uuid,
    required String url,
    required String title,
    required String abstract,
    required Track track,
    required DateTime startsAt,
    required int lengthMin,
    required List<Tag> tags,
    required Speaker speaker,
  }) = TalkSession;

  const factory Session.lunch() = LunchSession;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}
