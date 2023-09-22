import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:flutter/material.dart';

/// スポンサープランのヘッダー
final class SponsorPlanHeader extends StatelessWidget {
  SponsorPlanHeader({
    required String text,
    required TextStyle style,
    required SponsorPlan plan,
  }) : this._(
          text: text,
          style: style,
          gradient: switch (plan) {
            SponsorPlan.platinum => GradientConstant.sponsor.platinum,
            SponsorPlan.gold => GradientConstant.sponsor.gold,
            SponsorPlan.silver => GradientConstant.sponsor.silver,
          },
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

  late final TextStyle style;

  final Gradient gradient;

  @override
  Widget build(BuildContext context) => SectionHeader.centerAlignment(
        text: text,
        style: style,
        gradient: gradient,
      );
}
