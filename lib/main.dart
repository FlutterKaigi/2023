import 'package:confwebsite2023/app/app.dart';
import 'package:confwebsite2023/core/config.dart';
import 'package:confwebsite2023/features/news/data/mock_news_data_source.dart';
import 'package:confwebsite2023/features/news/data/news_data_source.dart';
import 'package:confwebsite2023/features/staff/data/mock_staff_data_source.dart';
import 'package:confwebsite2023/features/staff/data/staff_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_fonts/google_fonts.dart';
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
      newsDataSourceProvider.overrideWithValue(MockNewsDataSource()),
    ]);
  }

  // Wait for the fonts to be loaded before running the app
  await GoogleFonts.pendingFonts([
    GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
    ),
    GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
    ),
    GoogleFonts.poppins(
      fontStyle: FontStyle.italic,
      // semi-bold
      fontWeight: FontWeight.w600,
    ),
    GoogleFonts.poppins(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700,
    ),
    GoogleFonts.poppins(
      fontStyle: FontStyle.italic,
      // extra-bold
      fontWeight: FontWeight.w800,
    ),
    GoogleFonts.roboto(),
  ]);

  runApp(
    ProviderScope(
      overrides: overrides,
      child: const App(),
    ),
  );
}
