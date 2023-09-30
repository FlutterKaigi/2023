import 'package:confwebsite2023/features/session/data/talk_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'talk.freezed.dart';

@freezed
class Talk with _$Talk {
  const factory Talk({
    required String id,
    required int trackId,
    required String title,
    required TalkUser user,
  }) = _Talk;
}
