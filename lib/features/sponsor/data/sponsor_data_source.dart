import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_data_source.g.dart';

@Riverpod(keepAlive: true)
SponsorDataSource sponsorDataSource(SponsorDataSourceRef ref) =>
    SponsorDataSource();

final class SponsorDataSource {
  Future<List<Sponsor>> fetchSponsors() async {
    return [];
  }
}
