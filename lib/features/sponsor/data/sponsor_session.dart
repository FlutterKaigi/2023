import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor_session.freezed.dart';

@freezed
class SponsorSession with _$SponsorSession {
  const factory SponsorSession({
    required String id,
    required String title,
    required String url,
    required String scheduledAt,
  }) = _SponsorSession;
}
