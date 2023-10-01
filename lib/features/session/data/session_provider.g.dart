// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionsHash() => r'ce60cc19f17e9060ac39eab72bb7e5e0af24ea0c';

/// See also [sessions].
@ProviderFor(sessions)
final sessionsProvider = FutureProvider<List<Session>>.internal(
  sessions,
  name: r'sessionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sessionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SessionsRef = FutureProviderRef<List<Session>>;
String _$sessionIdHash() => r'804eae58580885a5bfebe0d2d0530c303b8eb467';

/// See also [sessionId].
@ProviderFor(sessionId)
final sessionIdProvider = AutoDisposeProvider<String>.internal(
  sessionId,
  name: r'sessionIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sessionIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SessionIdRef = AutoDisposeProviderRef<String>;
String _$sessionHash() => r'76c52568131a17db5cf0fe493665101dff3677d6';

/// See also [session].
@ProviderFor(session)
final sessionProvider = AutoDisposeFutureProvider<Session>.internal(
  session,
  name: r'sessionProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sessionHash,
  dependencies: <ProviderOrFamily>[sessionsProvider, sessionIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    sessionsProvider,
    ...?sessionsProvider.allTransitiveDependencies,
    sessionIdProvider,
    ...?sessionIdProvider.allTransitiveDependencies
  },
);

typedef SessionRef = AutoDisposeFutureProviderRef<Session>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
