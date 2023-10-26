import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/app_links/ui/app_links.dart';
import 'package:confwebsite2023/features/app_links/ui/app_links_header.dart';
import 'package:confwebsite2023/features/app_links/ui/app_links_summary.dart';
import 'package:flutter/material.dart';

final class AppLinksSection extends StatelessWidget {
  const AppLinksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppLinksHeader(),
        Spaces.vertical_28,
        AppLinksSummary(),
        Spaces.vertical_36,
        AppLinks(),
      ],
    );
  }
}
