import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

/// [ListBullet] is a primary color circle mark.
final class ListBullet extends StatelessWidget {
  const ListBullet({super.key});

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
