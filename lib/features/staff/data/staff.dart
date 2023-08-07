// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff.freezed.dart';
part 'staff.g.dart';

@freezed
class Staff with _$Staff {
  const factory Staff({
    required String displayName,
    required String imageName,
    required List<Sns> sns,
    @Default('') String introduction,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);
}

@freezed
class Sns with _$Sns {
  const factory Sns({
    required SnsType type,
    required String value,
  }) = _Sns;

  factory Sns.fromJson(Map<String, dynamic> json) => _$SnsFromJson(json);
}

enum SnsType {
  twitter('https://twitter.com/'),
  github('https://github.com/'),
  discord('https://discordapp.com/users/'),
  qiita('https://qiita.com/'),
  zenn('https://zenn.dev/'),
  note('https://note.com/'),
  medium('https://medium.com/'),
  url(''),
  ;

  const SnsType(this.prefixUrl);
  final String prefixUrl;
}
