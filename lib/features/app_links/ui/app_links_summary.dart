import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:flutter/material.dart';

final class AppLinksSummary extends StatelessWidget {
  const AppLinksSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.colorScheme.onPrimaryContainer;
    final textStyle = theme.textTheme.bodyLarge?.copyWith(
      color: textColor,
    );
    final screenType = ResponsiveWidget.getScreenSizeType(context);
    final text = switch (screenType) {
      ScreenSizeType.large ||
      ScreenSizeType.medium =>
        'FlutterKaigi 2023 のカンファレンスアプリをダウンロード',
      ScreenSizeType.small => 'FlutterKaigi 2023 の\nカンファレンスアプリをダウンロード',
    };
    return Text(
      text,
      textAlign: TextAlign.center,
      style: textStyle,
    );
  }
}
