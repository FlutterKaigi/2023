/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************
import 'package:flutter/widgets.dart';

class $AssetsPhotoGen {
  const $AssetsPhotoGen();

  /// File path: assets/photo/katsummy.png
  AssetGenImage get katsummy =>
      const AssetGenImage('assets/photo/katsummy.png');
  AssetGenImage get okaryo => const AssetGenImage('assets/photo/okaryo.png');
}

class $AssetsSponsorGen {
  const $AssetsSponsorGen();

  /// File path: assets/sponsor/autify.svg
  String get autify => 'assets/sponsor/autify.svg';

  /// File path: assets/sponsor/chompy.svg
  String get chompy => 'assets/sponsor/chompy.svg';

  /// File path: assets/sponsor/compass.svg
  String get compass => 'assets/sponsor/compass.svg';

  /// File path: assets/sponsor/cyber_agent.svg
  String get cyberAgent => 'assets/sponsor/cyber_agent.svg';

  /// File path: assets/sponsor/demaecan.svg
  String get demaecan => 'assets/sponsor/demaecan.svg';

  /// File path: assets/sponsor/dena.svg
  String get dena => 'assets/sponsor/dena.svg';

  /// File path: assets/sponsor/diverse.svg
  String get diverse => 'assets/sponsor/diverse.svg';

  /// File path: assets/sponsor/enechain.svg
  String get enechain => 'assets/sponsor/enechain.svg';

  /// File path: assets/sponsor/excite.svg
  String get excite => 'assets/sponsor/excite.svg';

  /// File path: assets/sponsor/fastdoctor.svg
  String get fastdoctor => 'assets/sponsor/fastdoctor.svg';

  /// File path: assets/sponsor/hokuto.svg
  String get hokuto => 'assets/sponsor/hokuto.svg';

  /// File path: assets/sponsor/layerx.svg
  String get layerx => 'assets/sponsor/layerx.svg';

  /// File path: assets/sponsor/m3.svg
  String get m3 => 'assets/sponsor/m3.svg';

  /// File path: assets/sponsor/studyplus.svg
  String get studyplus => 'assets/sponsor/studyplus.svg';

  /// File path: assets/sponsor/tenx.svg
  String get tenx => 'assets/sponsor/tenx.svg';

  /// File path: assets/sponsor/tokyu.svg
  String get tokyu => 'assets/sponsor/tokyu.svg';

  /// File path: assets/sponsor/youtrust.svg
  String get youtrust => 'assets/sponsor/youtrust.svg';

  /// File path: assets/sponsor/yumemi.svg
  String get yumemi => 'assets/sponsor/yumemi.svg';
}

class Assets {
  Assets._();

  static const AssetGenImage banner = AssetGenImage('assets/banner.png');
  static const String discordLogo = 'assets/discord_logo.svg';
  static const String flutterkaigiNavbarDarkLogo =
      'assets/flutterkaigi-navbar_dark_logo.svg';
  static const String flutterkaigiNavbarLightLogo =
      'assets/flutterkaigi-navbar_light_logo.svg';
  static const String flutterkaigiLogo = 'assets/flutterkaigi_logo.svg';
  static const String githubLogo = 'assets/github_logo.svg';
  static const String mediumLogo = 'assets/medium_logo.svg';
  static const $AssetsPhotoGen photo = $AssetsPhotoGen();
  static const $AssetsSponsorGen sponsor = $AssetsSponsorGen();
  static const String twitterLogo = 'assets/twitter_logo.svg';
  static const String twitterWhite = 'assets/twitter_white.svg';
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
