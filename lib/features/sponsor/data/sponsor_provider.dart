import 'package:collection/collection.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_provider.g.dart';

@riverpod
List<Sponsor> sponsors(SponsorsRef ref) =>
    ref.watch(sponsorDataSourceProvider).fetchSponsors();

@riverpod
Sponsor? sponsor(SponsorRef ref, String name) {
  final sponsors = ref.watch(sponsorsProvider);
  return sponsors.firstWhereOrNull((element) => name == element.name);
}
