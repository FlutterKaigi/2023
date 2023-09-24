import 'package:collection/collection.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_provider.g.dart';

@riverpod
Future<List<Sponsor>> sponsors(SponsorsRef ref) =>
    ref.watch(sponsorDataSourceProvider).fetchSponsors();

@riverpod
Future<Sponsor?> sponsor(SponsorRef ref, String name) async {
  final sponsors = await ref.watch(sponsorsProvider.future);
  return sponsors.firstWhereOrNull((element) => name == element.name);
}
