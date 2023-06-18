import 'package:confwebsite2023/app.dart';
import 'package:confwebsite2023/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  await dotenv.load();

  setUrlStrategy(PathUrlStrategy());

  final config = Config();
  final overrideConfigProvider = configProvider.overrideWithValue(config);

  runApp(
    ProviderScope(
      overrides: [
        overrideConfigProvider,
      ],
      child: const App(),
    ),
  );
}
