import 'dart:async';

import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final class AppLinks extends StatelessWidget {
  const AppLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSizeType = ResponsiveWidget.getScreenSizeType(context);
    final spacing = switch (screenSizeType) {
      ScreenSizeType.large || ScreenSizeType.medium => 40.0,
      ScreenSizeType.small => 24.0,
    };
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: spacing,
      runSpacing: spacing,
      children: const [
        _AppLink.appStore(),
        _AppLink.googlePlay(),
      ],
    );
  }
}

final class _AppLink extends StatelessWidget {
  const _AppLink.appStore() : _type = _AppLinkType.appStore;

  const _AppLink.googlePlay() : _type = _AppLinkType.googlePlay;

  final _AppLinkType _type;

  @override
  Widget build(BuildContext context) {
    final onTap = switch (_type) {
      _AppLinkType.appStore => () {
          final uri = Uri.parse(
            'https://apps.apple.com/app/id6469518498',
          );
          unawaited(launchUrl(uri));
        },
      _AppLinkType.googlePlay => () {
          final uri = Uri.parse(
            'https://play.google.com/store/apps/details?id=jp.flutterkaigi.conf2023',
          );
          unawaited(launchUrl(uri));
        },
    };

    final assetName = switch (_type) {
      _AppLinkType.appStore => Assets.appLinks.appStore.keyName,
      _AppLinkType.googlePlay => Assets.appLinks.googlePlay.keyName,
    };

    final imageButton = Material(
      color: Colors.transparent,
      child: Ink.image(
        image: AssetImage(assetName),
        fit: BoxFit.fitHeight,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );

    final screenSizeType = ResponsiveWidget.getScreenSizeType(context);
    final height = switch (screenSizeType) {
      ScreenSizeType.large || ScreenSizeType.medium => 54.0,
      ScreenSizeType.small => 42.0,
    };

    final aspectRatio = switch (_type) {
      _AppLinkType.appStore => 148 / 54,
      _AppLinkType.googlePlay => 182 / 54,
    };

    return SizedBox(
      height: height,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: imageButton,
      ),
    );
  }
}

enum _AppLinkType {
  appStore,
  googlePlay,
}
