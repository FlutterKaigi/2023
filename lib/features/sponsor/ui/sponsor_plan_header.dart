import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

final class SponsorPlanHeader extends StatelessWidget {
  SponsorPlanHeader.platinum({
    required String text,
    required TextStyle style,
  }) : this._(
          text: text,
          style: style,
          gradient: GradientConstant.sponsor.platinum,
        );

  SponsorPlanHeader.gold({
    required String text,
    required TextStyle style,
  }) : this._(
          text: text,
          style: style,
          gradient: GradientConstant.sponsor.gold,
        );

  SponsorPlanHeader.silver({
    required String text,
    required TextStyle style,
  }) : this._(
          text: text,
          style: style,
          gradient: GradientConstant.sponsor.silver,
        );

  SponsorPlanHeader._({
    required this.text,
    required TextStyle style,
    required this.gradient,
  }) : style = style.copyWith(
          shadows: [
            Shadow(
              color: gradient.colors.first.withOpacity(0.25),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        );

  final String text;

  final TextStyle style;

  final Gradient gradient;

  @override
  Widget build(BuildContext context) => SectionHeader.centerAlignment(
        text: text,
        style: style,
        gradient: gradient,
      );
}
