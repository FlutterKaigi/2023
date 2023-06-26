import 'dart:ui';

import 'package:confwebsite2023/gen/assets.gen.dart';
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

    Widget baseIcon({
      Color? color,
    }) =>
        SvgPicture.asset(
          Assets.flutterkaigiLogoUnion,
          width: iconSize,
          height: iconSize,
          colorFilter: ColorFilter.mode(color ?? iconColor, BlendMode.srcIn),
        );
    final shadowedIcon = Stack(
      children: [
        // blur
        Transform.translate(
          offset: Offset(-(iconSize / 18), -(iconSize / 18)),
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: iconSize / 18,
              sigmaY: iconSize / 18,
            ),
            child: baseIcon(color: const Color(0x7240D1FF)),
          ),
        ),
        Transform.translate(
          offset: Offset(iconSize / 18, iconSize / 18),
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: iconSize / 18,
              sigmaY: iconSize / 18,
            ),
            child: baseIcon(color: const Color(0x668211B1)),
          ),
        ),
        baseIcon(),
      ],
    );
    switch (style) {
      case FlutterKaigiLogoStyle.markOnly when showGradient:
        return shadowedIcon;
      case FlutterKaigiLogoStyle.markOnly:
        return baseIcon();
      case FlutterKaigiLogoStyle.horizontal:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showGradient) shadowedIcon else baseIcon(),
            const SizedBox(width: 10),
            Text(
              'Flutter Kaigi 2023',
              style: textStyle,
            ),
          ],
        );
      case FlutterKaigiLogoStyle.stacked:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showGradient) shadowedIcon else baseIcon(),
            const SizedBox(height: 10),
            Text(
              'Flutter Kaigi 2023',
              style: textStyle,
            ),
          ],
        );
    }
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
