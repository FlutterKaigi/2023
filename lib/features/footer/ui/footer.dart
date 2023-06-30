import 'package:confwebsite2023/features/footer/ui/footer_age.dart';
import 'package:confwebsite2023/features/footer/ui/footer_links.dart';
import 'package:confwebsite2023/features/footer/ui/footer_sns_links.dart';
import 'package:confwebsite2023/theme/baseline_color_scheme.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.bodyLarge?.copyWith(
      color: baselineColorScheme.ref.secondary.secondary80,
    );
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF511486),
              Color(0xFF391940),
            ],
          ),
        ),
        child: Column(
          children: [
            const FooterAge(),
            const FooterSnsLinks(),
            const FooterLinks(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                '© 2021-2023 FlutterKaigi 実行委員会',
                style: textStyle,
              ),
            ),
            Column(
              children: [
                Text(
                  'Flutter and the related logo are trademarks of Google LLC. '
                  'FlutterKaigi is not affiliated with or otherwise sponsored '
                  'by Google LLC.',
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                const SizedBox(height: 20),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  runSpacing: 8,
                  spacing: 8,
                  children: [
                    Text(
                      'The "Flutter" name and the Flutter logo',
                      style: textStyle,
                    ),
                    const ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcATop,
                      ),
                      child: FlutterLogo(size: 24),
                    ),
                    Text(
                      'are trademarks owned by Google.',
                      style: textStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 80),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
