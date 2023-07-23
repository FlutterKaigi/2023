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

  /// File path: assets/icons/discord.png
  AssetGenImage get discord => const AssetGenImage('assets/icons/discord.png');

  /// File path: assets/icons/github.png
  AssetGenImage get github => const AssetGenImage('assets/icons/github.png');

  /// File path: assets/icons/medium.png
  AssetGenImage get medium => const AssetGenImage('assets/icons/medium.png');

  /// File path: assets/icons/note.png
  AssetGenImage get note => const AssetGenImage('assets/icons/note.png');

  /// File path: assets/icons/qiita.png
  AssetGenImage get qiita => const AssetGenImage('assets/icons/qiita.png');

  /// File path: assets/icons/twitter.png
  AssetGenImage get twitter => const AssetGenImage('assets/icons/twitter.png');

  /// File path: assets/icons/zenn.png
  AssetGenImage get zenn => const AssetGenImage('assets/icons/zenn.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [discord, github, medium, note, qiita, twitter, zenn];
}

class Assets {
  Assets._();


  static const AssetGenImage illustrationTeamwork =
      AssetGenImage('assets/Illustration-Teamwork.png');
  static const AssetGenImage flutterkaigiLogo =
      AssetGenImage('assets/flutterkaigi_logo.png');
  static const AssetGenImage flutterkaigiLogoUnion =
      AssetGenImage('assets/flutterkaigi_logo_union.png');
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const AssetGenImage personalWanted =
      AssetGenImage('assets/personal_wanted.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        illustrationTeamwork,
        flutterkaigiLogo,
        flutterkaigiLogoUnion,
        personalWanted
      ];
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
