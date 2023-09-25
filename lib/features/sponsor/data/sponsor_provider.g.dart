// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sponsor_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sponsorHash() => r'7836857d08c69dcd95a337122f26f729a48d481b';

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

typedef SponsorRef = AutoDisposeProviderRef<Sponsor?>;

/// See also [sponsor].
@ProviderFor(sponsor)
const sponsorProvider = SponsorFamily();

/// See also [sponsor].
class SponsorFamily extends Family<Sponsor?> {
  /// See also [sponsor].
  const SponsorFamily();

  /// See also [sponsor].
  SponsorProvider call(
    String name,
  ) {
    return SponsorProvider(
      name,
    );
  }

  @override
  SponsorProvider getProviderOverride(
    covariant SponsorProvider provider,
  ) {
    return call(
      provider.name,
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
  String? get name => r'sponsorProvider';
}

/// See also [sponsor].
class SponsorProvider extends AutoDisposeProvider<Sponsor?> {
  /// See also [sponsor].
  SponsorProvider(
    this.name,
  ) : super.internal(
          (ref) => sponsor(
            ref,
            name,
          ),
          from: sponsorProvider,
          name: r'sponsorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sponsorHash,
          dependencies: SponsorFamily._dependencies,
          allTransitiveDependencies: SponsorFamily._allTransitiveDependencies,
        );

  final String name;

  @override
  bool operator ==(Object other) {
    return other is SponsorProvider && other.name == name;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
