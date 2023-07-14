import 'package:flutter/material.dart';

/// A widget that displays a different widget based on the screen size.
/// If [mediumWidget] and [smallWidget] are not provided, [largeWidget] is used
/// If [smallWidget] is not provided, [mediumWidget] is used
/// If [mediumWidget] is not provided, [largeWidget] is used
class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    required this.largeWidget,
    this.mediumWidget,
    this.smallWidget,
    super.key,
  });

  final Widget largeWidget;
  final Widget? mediumWidget;
  final Widget? smallWidget;

  /// Threshold for large screen
  static const int largeScreenSize = 1200;

  /// Threshold for medium screen
  static const int mediumScreenSize = 800;

  /// Returns the screen size type based on the screen width
  static ScreenSizeType getScreenSizeType(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return switch (screenWidth) {
      > largeScreenSize => ScreenSizeType.large,
      > mediumScreenSize => ScreenSizeType.medium,
      _ => ScreenSizeType.small,
    };
  }

  @override
  Widget build(BuildContext context) {
    final type = getScreenSizeType(context);
    return switch (type) {
      ScreenSizeType.small when smallWidget != null => smallWidget!,
      ScreenSizeType.medium when mediumWidget != null => mediumWidget!,
      _ => largeWidget,
    };
  }
}

enum ScreenSizeType {
  small,
  medium,
  large,
  ;
}
