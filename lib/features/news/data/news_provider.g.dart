// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'news_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsHash() => r'000c2964b30434e9cb81330c2d1a7ecebd0c9be6';

/// See also [news].
@ProviderFor(news)
final newsProvider = AutoDisposeFutureProvider<List<News>>.internal(
  news,
  name: r'newsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NewsRef = AutoDisposeFutureProviderRef<List<News>>;
String _$currentNewsHash() => r'a02513037ddc7813c58fb0085c396acb35829c16';

/// `startedAt`が現在時刻よりも未来 かつ `endedAt`が現在時刻よりも過去のNewsのみを返す
///
/// Copied from [currentNews].
@ProviderFor(currentNews)
final currentNewsProvider = AutoDisposeFutureProvider<List<News>>.internal(
  currentNews,
  name: r'currentNewsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentNewsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentNewsRef = AutoDisposeFutureProviderRef<List<News>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
