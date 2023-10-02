import 'package:confwebsite2023/features/session/data/speaker.dart';
import 'package:confwebsite2023/features/session/data/tag.dart';
import 'package:confwebsite2023/features/session/data/track.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

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
    Speaker? speaker,
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

extension TalkSessionIsSponsored on TalkSession {
  bool get isSponsored {
    return tags.any((tag) => tag.name == 'Sponsored');
  }
}

final _formatterForStartsAt = DateFormat('yyyy年MM月dd日 HH:mm');
final _formatterForEndsAt = DateFormat('HH:mm');

extension TalkSessionTimeText on TalkSession {
  String get timeText {
    final endsAt = startsAt.add(Duration(minutes: lengthMin));

    final startsAtText = _formatterForStartsAt.format(startsAt.toLocal());
    final endsAtText = _formatterForEndsAt.format(endsAt.toLocal());
    final lengthMinText = '$lengthMin分';

    return '$startsAtText〜$endsAtText（$lengthMinText）';
  }
}
