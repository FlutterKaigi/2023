/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAppLinksGen {
  const $AssetsAppLinksGen();

  /// File path: assets/app_links/app_store.png
  AssetGenImage get appStore =>
      const AssetGenImage('assets/app_links/app_store.png');

  /// File path: assets/app_links/google_play.png
  AssetGenImage get googlePlay =>
      const AssetGenImage('assets/app_links/google_play.png');

  /// List of all assets
  List<AssetGenImage> get values => [appStore, googlePlay];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/copy.svg
  String get copy => 'assets/icons/copy.svg';

  /// File path: assets/icons/discord.svg
  String get discord => 'assets/icons/discord.svg';

  /// File path: assets/icons/dot.svg
  String get dot => 'assets/icons/dot.svg';

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
      [copy, discord, dot, github, medium, note, qiita, twitter, zenn];
}

class $AssetsSponsorsGen {
  const $AssetsSponsorsGen();

  /// File path: assets/sponsors/bitkey.svg
  String get bitkey => 'assets/sponsors/bitkey.svg';

  /// File path: assets/sponsors/cyberagent.png
  AssetGenImage get cyberagent =>
      const AssetGenImage('assets/sponsors/cyberagent.png');

  /// File path: assets/sponsors/demaecan.svg
  String get demaecan => 'assets/sponsors/demaecan.svg';

  /// File path: assets/sponsors/diverse.svg
  String get diverse => 'assets/sponsors/diverse.svg';

  /// File path: assets/sponsors/enechain.svg
  String get enechain => 'assets/sponsors/enechain.svg';

  /// File path: assets/sponsors/flutter.svg
  String get flutter => 'assets/sponsors/flutter.svg';

  /// File path: assets/sponsors/harmo.png
  AssetGenImage get harmo => const AssetGenImage('assets/sponsors/harmo.png');

  /// File path: assets/sponsors/layerx.svg
  String get layerx => 'assets/sponsors/layerx.svg';

  /// File path: assets/sponsors/magicpod.svg
  String get magicpod => 'assets/sponsors/magicpod.svg';

  /// File path: assets/sponsors/mthree.svg
  String get mthree => 'assets/sponsors/mthree.svg';

  /// File path: assets/sponsors/navitime.svg
  String get navitime => 'assets/sponsors/navitime.svg';

  /// File path: assets/sponsors/pioneer.svg
  String get pioneer => 'assets/sponsors/pioneer.svg';

  /// File path: assets/sponsors/recruit.png
  AssetGenImage get recruit =>
      const AssetGenImage('assets/sponsors/recruit.png');

  /// File path: assets/sponsors/studyplus.svg
  String get studyplus => 'assets/sponsors/studyplus.svg';

  /// File path: assets/sponsors/tenx.svg
  String get tenx => 'assets/sponsors/tenx.svg';

  /// File path: assets/sponsors/tokyu.svg
  String get tokyu => 'assets/sponsors/tokyu.svg';

  /// File path: assets/sponsors/youtrust.svg
  String get youtrust => 'assets/sponsors/youtrust.svg';

  /// File path: assets/sponsors/yumemi.svg
  String get yumemi => 'assets/sponsors/yumemi.svg';

  /// List of all assets
  List<dynamic> get values => [
        bitkey,
        cyberagent,
        demaecan,
        diverse,
        enechain,
        flutter,
        harmo,
        layerx,
        magicpod,
        mthree,
        navitime,
        pioneer,
        recruit,
        studyplus,
        tenx,
        tokyu,
        youtrust,
        yumemi
      ];
}

class Assets {
  Assets._();

  static const String illustrationConference =
      'assets/Illustration-Conference.svg';
  static const $AssetsAppLinksGen appLinks = $AssetsAppLinksGen();
  static const String flutterkaigiLogoShadowed =
      'assets/flutterkaigi_logo_shadowed.svg';
  static const String flutterkaigiLogoUnion =
      'assets/flutterkaigi_logo_union.svg';
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsSponsorsGen sponsors = $AssetsSponsorsGen();

  /// List of all assets
  List<String> get values =>
      [illustrationConference, flutterkaigiLogoShadowed, flutterkaigiLogoUnion];
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
