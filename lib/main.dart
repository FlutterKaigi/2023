import 'package:confwebsite2023/app.dart';
import 'package:confwebsite2023/config.dart';
import 'package:confwebsite2023/features/staff/data/mock_staff_data_source.dart';
import 'package:confwebsite2023/features/staff/data/staff_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  await dotenv.load();

  setUrlStrategy(PathUrlStrategy());

  final config = Config();

  final overrides = <Override>[
    configProvider.overrideWithValue(config),
  ];

  if (config.isMock) {
    overrides.addAll([
      staffDataSourceProvider.overrideWithValue(MockStaffDataSource()),
    ]);
  }

  runApp(
    ProviderScope(
      overrides: overrides,
      child: const App(),
    ),
  );
}
