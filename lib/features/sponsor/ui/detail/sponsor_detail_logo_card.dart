import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme/baseline_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// スポンサー詳細のロゴカード
final class SponsorDetailLogoCard extends StatelessWidget {
  const SponsorDetailLogoCard({
    required this.assetName,
    required this.cardWidth,
    required this.cardPadding,
    super.key,
  });

  final String assetName;
  final double cardWidth;
  final double cardPadding;

  @override
  Widget build(BuildContext context) {
    final Widget logo;
    if (assetName == Assets.sponsors.cyberagent.keyName ||
        assetName == Assets.sponsors.harmo.keyName ||
        assetName == Assets.sponsors.recruit.keyName) {
      logo = Image.asset(
        assetName,
        fit: BoxFit.contain,
      );
    } else {
      logo = SvgPicture.asset(assetName);
    }

    final cardSize = Size(cardWidth, cardWidth / 2);
    return Card(
      color: baselineColorScheme.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox.fromSize(
        size: cardSize,
        child: Padding(
          padding: EdgeInsets.all(cardPadding),
          child: logo,
        ),
      ),
    );
  }
}
