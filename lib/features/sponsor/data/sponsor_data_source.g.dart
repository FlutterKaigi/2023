// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sponsor_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$planSponsorsHash() => r'9009051b95d727710528bd50ed36d618d591ab7e';

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

typedef PlanSponsorsRef = AutoDisposeProviderRef<List<Sponsor>>;

/// See also [planSponsors].
@ProviderFor(planSponsors)
const planSponsorsProvider = PlanSponsorsFamily();

/// See also [planSponsors].
class PlanSponsorsFamily extends Family<List<Sponsor>> {
  /// See also [planSponsors].
  const PlanSponsorsFamily();

  /// See also [planSponsors].
  PlanSponsorsProvider call(
    SponsorPlan plan,
  ) {
    return PlanSponsorsProvider(
      plan,
    );
  }

  @override
  PlanSponsorsProvider getProviderOverride(
    covariant PlanSponsorsProvider provider,
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
  String? get name => r'planSponsorsProvider';
}

/// See also [planSponsors].
class PlanSponsorsProvider extends AutoDisposeProvider<List<Sponsor>> {
  /// See also [planSponsors].
  PlanSponsorsProvider(
    this.plan,
  ) : super.internal(
          (ref) => planSponsors(
            ref,
            plan,
          ),
          from: planSponsorsProvider,
          name: r'planSponsorsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$planSponsorsHash,
          dependencies: PlanSponsorsFamily._dependencies,
          allTransitiveDependencies:
              PlanSponsorsFamily._allTransitiveDependencies,
        );

  final SponsorPlan plan;

  @override
  bool operator ==(Object other) {
    return other is PlanSponsorsProvider && other.plan == plan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plan.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$allSponsorsHash() => r'26fc6be2abbfc4f6bcf4b29acd3197537291a7dc';

/// See also [allSponsors].
@ProviderFor(allSponsors)
final allSponsorsProvider = AutoDisposeProvider<List<Sponsor>>.internal(
  allSponsors,
  name: r'allSponsorsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allSponsorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllSponsorsRef = AutoDisposeProviderRef<List<Sponsor>>;
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
String _$silverSponsorsHash() => r'00ce24d35dba5fe132f6cf9f7695aa8b4c075cb9';

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
