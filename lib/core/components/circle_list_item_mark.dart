import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

/// [CircleListItemMark] is a primary color circle mark.
final class CircleListItemMark extends StatelessWidget {
  const CircleListItemMark({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: baselineColorScheme.ref.primary.primary40,
          shape: BoxShape.circle,
        ),
      );
}
