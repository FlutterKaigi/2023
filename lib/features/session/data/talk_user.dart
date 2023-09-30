import 'package:freezed_annotation/freezed_annotation.dart';

part 'talk_user.freezed.dart';

@freezed
class TalkUser with _$TalkUser {
  const factory TalkUser({
    required String name,
    required String thumbnailUrl,
  }) = _TalkUser;
}
