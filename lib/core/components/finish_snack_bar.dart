import 'package:flutter/material.dart';

class FinishSnackBar extends StatelessWidget {
  const FinishSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFFE6E1E5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'FlutterKaigi2023は終了しました。たくさんの方にご参加いただきありがとうございました。',
          style: textTheme.bodyMedium!.copyWith(
            color: const Color(0xFF49454F),
          ),
        ),
      ),
    );
  }
}
