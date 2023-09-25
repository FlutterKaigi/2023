import 'package:collection/collection.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_provider.g.dart';

@riverpod
Sponsor? sponsor(SponsorRef ref, String name) {
  return ref.watch(
    allSponsorsProvider.select(
      (allSponsors) => allSponsors.firstWhereOrNull((s) => s.name == name),
    ),
  );
}
