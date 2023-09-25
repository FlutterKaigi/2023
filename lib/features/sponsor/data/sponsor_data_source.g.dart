// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sponsor_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sponsorsHash() => r'232cfd81a63acda4b8aef859c8ee6fc0c5c5e444';

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

typedef SponsorsRef = AutoDisposeProviderRef<List<Sponsor>>;

/// See also [sponsors].
@ProviderFor(sponsors)
const sponsorsProvider = SponsorsFamily();

/// See also [sponsors].
class SponsorsFamily extends Family<List<Sponsor>> {
  /// See also [sponsors].
  const SponsorsFamily();

  /// See also [sponsors].
  SponsorsProvider call(
    SponsorPlan plan,
  ) {
    return SponsorsProvider(
      plan,
    );
  }

  @override
  SponsorsProvider getProviderOverride(
    covariant SponsorsProvider provider,
  ) {
    return call(
      provider.plan,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sponsorsProvider';
}

/// See also [sponsors].
class SponsorsProvider extends AutoDisposeProvider<List<Sponsor>> {
  /// See also [sponsors].
  SponsorsProvider(
    this.plan,
  ) : super.internal(
          (ref) => sponsors(
            ref,
            plan,
          ),
          from: sponsorsProvider,
          name: r'sponsorsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sponsorsHash,
          dependencies: SponsorsFamily._dependencies,
          allTransitiveDependencies: SponsorsFamily._allTransitiveDependencies,
        );

  final SponsorPlan plan;

  @override
  bool operator ==(Object other) {
    return other is SponsorsProvider && other.plan == plan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plan.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$platinumSponsorsHash() => r'c9f61a7b3cd6128884d88c44f4f175dca9e7b3e1';

/// See also [_platinumSponsors].
@ProviderFor(_platinumSponsors)
final _platinumSponsorsProvider = AutoDisposeProvider<List<Sponsor>>.internal(
  _platinumSponsors,
  name: r'_platinumSponsorsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$platinumSponsorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _PlatinumSponsorsRef = AutoDisposeProviderRef<List<Sponsor>>;
String _$goldSponsorsHash() => r'f82802dbf8f547bddf061c622f042335e433f38d';

/// See also [_goldSponsors].
@ProviderFor(_goldSponsors)
final _goldSponsorsProvider = AutoDisposeProvider<List<Sponsor>>.internal(
  _goldSponsors,
  name: r'_goldSponsorsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goldSponsorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _GoldSponsorsRef = AutoDisposeProviderRef<List<Sponsor>>;
String _$silverSponsorsHash() => r'ccfaeeb98446f2c906ea28f63e381774ab4bd97c';

/// See also [_silverSponsors].
@ProviderFor(_silverSponsors)
final _silverSponsorsProvider = AutoDisposeProvider<List<Sponsor>>.internal(
  _silverSponsors,
  name: r'_silverSponsorsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$silverSponsorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _SilverSponsorsRef = AutoDisposeProviderRef<List<Sponsor>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
