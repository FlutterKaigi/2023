import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

class FooterCopyright extends StatelessWidget {
  const FooterCopyright({super.key});

  @override
  Widget build(BuildContext context) {
    final copyrightTextStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: baselineColorScheme.ref.secondary.secondary80,
        );
    return Column(
      children: [
        Text(
          '© 2021-2023 FlutterKaigi 実行委員会',
          style: copyrightTextStyle,
        ),
        Spaces.vertical_20,
        Text(
          'Flutter and the related logo are trademarks of Google LLC. '
          'FlutterKaigi is not affiliated with or otherwise sponsored '
          'by Google LLC.',
          textAlign: TextAlign.center,
          style: copyrightTextStyle,
        ),
        Spaces.vertical_20,
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          runSpacing: 8,
          spacing: 8,
          children: [
            Text(
              'The "Flutter" name and the Flutter logo',
              style: copyrightTextStyle,
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
              style: copyrightTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
