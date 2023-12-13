// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'youtube_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$youtubePlayerControllerHash() =>
    r'2c72583291f0910c5fc1a6aa35c4ddf65dda8fe8';

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

typedef YoutubePlayerControllerRef
    = AutoDisposeProviderRef<YoutubePlayerController>;

/// See also [youtubePlayerController].
@ProviderFor(youtubePlayerController)
const youtubePlayerControllerProvider = YoutubePlayerControllerFamily();

/// See also [youtubePlayerController].
class YoutubePlayerControllerFamily extends Family<YoutubePlayerController> {
  /// See also [youtubePlayerController].
  const YoutubePlayerControllerFamily();

  /// See also [youtubePlayerController].
  YoutubePlayerControllerProvider call(
    String videoId,
  ) {
    return YoutubePlayerControllerProvider(
      videoId,
    );
  }

  @override
  YoutubePlayerControllerProvider getProviderOverride(
    covariant YoutubePlayerControllerProvider provider,
  ) {
    return call(
      provider.videoId,
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
  String? get name => r'youtubePlayerControllerProvider';
}

/// See also [youtubePlayerController].
class YoutubePlayerControllerProvider
    extends AutoDisposeProvider<YoutubePlayerController> {
  /// See also [youtubePlayerController].
  YoutubePlayerControllerProvider(
    this.videoId,
  ) : super.internal(
          (ref) => youtubePlayerController(
            ref,
            videoId,
          ),
          from: youtubePlayerControllerProvider,
          name: r'youtubePlayerControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$youtubePlayerControllerHash,
          dependencies: YoutubePlayerControllerFamily._dependencies,
          allTransitiveDependencies:
              YoutubePlayerControllerFamily._allTransitiveDependencies,
        );

  final String videoId;

  @override
  bool operator ==(Object other) {
    return other is YoutubePlayerControllerProvider && other.videoId == videoId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, videoId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
