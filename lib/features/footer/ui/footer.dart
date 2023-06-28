import 'package:confwebsite2023/features/footer/ui/footer_age.dart';
import 'package:confwebsite2023/features/footer/ui/footer_icon.dart';
import 'package:confwebsite2023/features/footer/ui/footer_links.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context).textTheme.bodyLarge;
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
            const FooterIcon(),
            const FooterLinks(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                '© 2021-2023 FlutterKaigi 実行委員会',
                style: theme!.copyWith(
                  color: colorScheme.secondary,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  'Flutter and the related logo are trademarks of Google LLC. '
                  'FlutterKaigi is not affiliated with or otherwise sponsored '
                  'by Google LLC.',
                  textAlign: TextAlign.center,
                  style: theme.copyWith(
                    color: colorScheme.secondary.withOpacity(0.8),
                  ),
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
                      style: theme.copyWith(
                        color: colorScheme.secondary.withOpacity(0.8),
                      ),
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
                      style: theme.copyWith(
                        color: colorScheme.secondary.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
