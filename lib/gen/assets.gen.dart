/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/discord.svg
  String get discord => 'assets/icons/discord.svg';

  /// File path: assets/icons/github.svg
  String get github => 'assets/icons/github.svg';

  /// File path: assets/icons/medium.svg
  String get medium => 'assets/icons/medium.svg';

  /// File path: assets/icons/note.svg
  String get note => 'assets/icons/note.svg';

  /// File path: assets/icons/qiita.svg
  String get qiita => 'assets/icons/qiita.svg';

  /// File path: assets/icons/twitter.svg
  String get twitter => 'assets/icons/twitter.svg';

  /// File path: assets/icons/zenn.svg
  String get zenn => 'assets/icons/zenn.svg';

  /// List of all assets
  List<String> get values =>
      [discord, github, medium, note, qiita, twitter, zenn];
}

class Assets {
  Assets._();

  static const String flutterkaigiLogo = 'assets/flutterkaigi_logo.svg';
  static const String flutterkaigiLogoUnion =
      'assets/flutterkaigi_logo_union.svg';
  static const $AssetsIconsGen icons = $AssetsIconsGen();

  /// List of all assets
  List<String> get values => [flutterkaigiLogo, flutterkaigiLogoUnion];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
