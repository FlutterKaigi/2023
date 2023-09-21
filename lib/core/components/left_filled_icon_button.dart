import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

class LeftFilledIconButton extends StatelessWidget {
  const LeftFilledIconButton({
    required this.onPressed,
    required this.buttonTitle,
    required this.icon,
    super.key,
  });

  final void Function() onPressed;
  final String buttonTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Spaces.horizontal_8,
            Text(
              buttonTitle,
              style: textTheme.labelLarge?.copyWith(
                color: colorScheme.onPrimary,
              ),
            ),
            Spaces.horizontal_8,
            Icon(
              icon,
              size: 18,
              color: colorScheme.onPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
