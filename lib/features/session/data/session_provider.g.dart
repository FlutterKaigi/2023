// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionsHash() => r'8f4cd24410dc4d6b00bdeed643557c421995edaa';

/// See also [sessions].
@ProviderFor(sessions)
final sessionsProvider = Provider<List<Session>>.internal(
  sessions,
  name: r'sessionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sessionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SessionsRef = ProviderRef<List<Session>>;
String _$tracksHash() => r'dc17a37b9f186742392257cf591451bdef58f321';

/// See also [tracks].
@ProviderFor(tracks)
final tracksProvider =
    AutoDisposeProvider<({Track left, Track right})>.internal(
  tracks,
  name: r'tracksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tracksHash,
  dependencies: <ProviderOrFamily>[sessionsProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    sessionsProvider,
    ...?sessionsProvider.allTransitiveDependencies
  },
);

typedef TracksRef = AutoDisposeProviderRef<({Track left, Track right})>;
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
String _$sessionHash() => r'7bde63b87a6b4b990c35fccffd7720e015582a17';

/// See also [session].
@ProviderFor(session)
final sessionProvider = AutoDisposeProvider<Session>.internal(
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

typedef SessionRef = AutoDisposeProviderRef<Session>;
String _$sessionSponsorHash() => r'2149eba5bf8f482ae106f19ff271c1a476dc59a6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef SessionSponsorRef = AutoDisposeProviderRef<Sponsor?>;

/// See also [sessionSponsor].
@ProviderFor(sessionSponsor)
const sessionSponsorProvider = SessionSponsorFamily();

/// See also [sessionSponsor].
class SessionSponsorFamily extends Family<Sponsor?> {
  /// See also [sessionSponsor].
  const SessionSponsorFamily();

  /// See also [sessionSponsor].
  SessionSponsorProvider call(
    Session session,
  ) {
    return SessionSponsorProvider(
      session,
    );
  }

  @override
  SessionSponsorProvider getProviderOverride(
    covariant SessionSponsorProvider provider,
  ) {
    return call(
      provider.session,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    allSponsorsProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    allSponsorsProvider,
    ...?allSponsorsProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sessionSponsorProvider';
}

/// See also [sessionSponsor].
class SessionSponsorProvider extends AutoDisposeProvider<Sponsor?> {
  /// See also [sessionSponsor].
  SessionSponsorProvider(
    this.session,
  ) : super.internal(
          (ref) => sessionSponsor(
            ref,
            session,
          ),
          from: sessionSponsorProvider,
          name: r'sessionSponsorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sessionSponsorHash,
          dependencies: SessionSponsorFamily._dependencies,
          allTransitiveDependencies:
              SessionSponsorFamily._allTransitiveDependencies,
        );

  final Session session;

  @override
  bool operator ==(Object other) {
    return other is SessionSponsorProvider && other.session == session;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, session.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
