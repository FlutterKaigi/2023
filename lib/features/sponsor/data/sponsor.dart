import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor.freezed.dart';

@freezed
class Sponsor with _$Sponsor {
  const factory Sponsor({
    required String name,
    required String displayName,
    required String url,
    required String logoAssetName,
    required SponsorPlan plan,
    required SponsorSession? session,
    @Default('') String introduction,
  }) = _Sponsor;
}
