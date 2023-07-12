import 'package:confwebsite2023/app/config.dart';
import 'package:confwebsite2023/app/home_page.dart';
import 'package:confwebsite2023/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(configProvider);
    return MaterialApp(
      title: config.appTitle,
      theme: lightTheme, // Specified but not used
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const MainPage(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
