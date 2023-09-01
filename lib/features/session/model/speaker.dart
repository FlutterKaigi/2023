import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaker.freezed.dart';
part 'speaker.g.dart';

@freezed
class Speaker with _$Speaker {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Speaker({
    required String name,
    required String avatarUrl,
    String? twitter,
  }) = _Speaker;

  factory Speaker.fromJson(Map<String, dynamic> json) =>
      _$SpeakerFromJson(json);
}
