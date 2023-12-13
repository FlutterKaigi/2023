import 'package:confwebsite2023/features/session/data/speaker.dart';
import 'package:confwebsite2023/features/session/data/tag.dart';
import 'package:confwebsite2023/features/session/data/track.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'session.freezed.dart';

part 'session.g.dart';

@Freezed(unionKey: 'type')
sealed

class Session with _$Session {
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

  const factory Session.lunch({
    required DateTime startsAt,
    required int lengthMin,
  }) = LunchSession;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

extension TalkSessionIsSponsored on TalkSession {
  bool get isSponsored {
    return tags.any((tag) => tag.name == 'Sponsored');
  }
}

final _formatterLong = DateFormat('yyyy年MM月dd日 HH:mm');
final _formatterShort = DateFormat('HH:mm');

extension SessionTimeText on Session {
  DateTime get _endsAt {
    return startsAt.add(Duration(minutes: lengthMin));
  }

  String get timeRangeLongText {
    final startsAtText = _formatterLong.format(startsAt.toLocal());
    final endsAtText = _formatterShort.format(_endsAt.toLocal());
    final lengthMinText = '$lengthMin分';
    return '$startsAtText〜$endsAtText（$lengthMinText）';
  }

  String get timeRangeShortText {
    final startsAtText = _formatterShort.format(startsAt.toLocal());
    final endsAtText = _formatterShort.format(_endsAt.toLocal());
    return '$startsAtText〜$endsAtText';
  }
}

extension SessionYoutubeUrlEx on TalkSession {
  String get youtubeUrl {
    return switch (uuid) {
      '21abbd32-6864-487a-8066-c9d7f7e5e9be' => 'cMS2FzbhXJ8',
      '5b402df3-9e5d-4c0b-80fa-61d9ba356594' => 'bKnvn-Orpd0',
      '972ffbac-422b-4d4b-9686-f59c4438da04' => 'jNmyr-TZVfU',
      '84b1350e-b76e-4cdc-884b-37a4a6e14846' => 'UGxzjYNHH90',
      '090ad5b8-7066-40e6-8ca8-58fff766f046' => 'lObSpRxP1Do',
      '0b32515e-2c80-45f4-8ea2-c6c269d2609f' => '2SnTNFAzmY0',
      'df52c995-5fbb-4ff0-abbc-e6332af98797' => 'VHhZlTDfwIQ',
      '67df96a0-4f03-401a-b740-c296a5bcbd86' => 'NcfrY-EN8Pg',
      'f76c37b8-172d-4072-ad4a-bd870bc15728' => 'sznsAolD6dI',
      'd9cc75af-a3a2-4d0e-af6c-f12aa143ba4c' => 'EKoI-p1UnNk',
      '076d093c-a1ff-4fe3-be58-8f8536c97de3' => 'vCoG6BTNpAA',
      '2b0118b0-52d2-4a9c-a564-faf50651dea2' => '6zLih07J3RU',
      _ => '',
    };
  }
}
