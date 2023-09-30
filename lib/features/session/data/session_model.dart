import 'package:confwebsite2023/features/session/data/speaker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_model.freezed.dart';

@freezed
class SessionModel with _$SessionModel {
  const factory SessionModel({
    required String id,
    required String sessionName,
    required String title,
    required Speaker user,
    required String contents,
    required String time,
    required String trackName,
    required String twitter,
    required bool isSponsor,
    required String forteeUrl,
    String? sponsorImage,
    String? sponsorName,
  }) = _SessionModel;
}
