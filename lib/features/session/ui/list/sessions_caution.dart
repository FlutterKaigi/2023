import 'package:flutter/material.dart';

final class SessionsCaution extends StatelessWidget {
  const SessionsCaution({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Text(
      '''
・スポンサーブースは10:55〜16:30まで展示しています。
・終了の挨拶のあとに懇親会を予定しています。''',
      style: textTheme.bodyLarge,
    );
  }
}
