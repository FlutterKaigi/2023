// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui_web' as ui;

import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlutterKaigiLogo extends StatelessWidget {
  const FlutterKaigiLogo({
    required this.style,
    this.iconColor = Colors.white,
    this.textStyle = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    this.showGradient,
    this.size,
    super.key,
  });
  final FlutterKaigiLogoStyle style;

  final TextStyle textStyle;
  final Color iconColor;

  /// The size of the logo in logical pixels.
  ///
  /// Defaults to the current [IconTheme] size, if any. If there is no
  /// [IconTheme], or it does not specify an explicit size, then it defaults to
  /// 24.0.
  final double? size;

  /// If true, this widget will show gradient behind the logo.
  final bool? showGradient;

  @override
  Widget build(BuildContext context) {
    final showGradient = this.showGradient ?? style.showGraident;

    final iconTheme = IconTheme.of(context);
    final iconSize = size ?? iconTheme.size ?? 24;

    final baseIcon = SvgPicture.asset(
      Assets.flutterkaigiLogoUnion,
      width: iconSize,
      height: iconSize,
      colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
    );
    final shadowedIcon = _FlutterKaigiShadowedLogo(size: iconSize);
    return switch (style) {
      FlutterKaigiLogoStyle.markOnly when showGradient => shadowedIcon,
      FlutterKaigiLogoStyle.markOnly => baseIcon,
      FlutterKaigiLogoStyle.horizontal => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            baseIcon,
            Spaces.horizontal_10,
            Text(
              'FlutterKaigi 2023',
              style: textStyle,
            ),
          ],
        ),
      FlutterKaigiLogoStyle.stacked => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            baseIcon,
            Spaces.vertical_10,
            Text(
              'FlutterKaigi 2023',
              style: textStyle,
            ),
          ],
        ),
    };
  }
}

class _FlutterKaigiShadowedLogo extends StatelessWidget {
  const _FlutterKaigiShadowedLogo({
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    const viewType = 'flutterkaigi-logo-shadow';
    const imageUrl = 'assets/${Assets.flutterkaigiLogoShadowed}';
    ui.platformViewRegistry.registerViewFactory(
      viewType,
      (int viewType) => ImageElement()..src = imageUrl,
    );
    return SizedBox(
      height: size,
      width: size,
      child: const HtmlElementView(
        viewType: viewType,
      ),
    );
  }
}

/// Possible ways to draw Flutter Kaigi's logo.
/// ref: `FlutterLogoStyle`
enum FlutterKaigiLogoStyle {
  /// Show only Flutter's logo, not the "Flutter" label.
  markOnly(showGraident: true),

  /// Show Flutter's logo on the left, and the "Flutter" label to its right.
  horizontal(showGraident: false),

  /// Show Flutter's logo above the "Flutter" label.
  stacked(showGraident: false),
  ;

  const FlutterKaigiLogoStyle({required this.showGraident});
  final bool showGraident;
}
