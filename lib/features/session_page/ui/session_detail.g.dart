// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionHash() => r'7e8c42fc7220922f98b4bf8ac99a6065db4c59b8';

/// See also [_session].
@ProviderFor(_session)
final _sessionProvider = AutoDisposeProvider<SessionModel>.internal(
  _session,
  name: r'_sessionProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sessionHash,
  dependencies: <ProviderOrFamily>[sessionIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    sessionIdProvider,
    ...?sessionIdProvider.allTransitiveDependencies
  },
);

typedef _SessionRef = AutoDisposeProviderRef<SessionModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member