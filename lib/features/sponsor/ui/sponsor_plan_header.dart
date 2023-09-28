import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:flutter/material.dart';

/// スポンサープランのヘッダー
final class SponsorPlanHeader extends StatelessWidget {
  const SponsorPlanHeader.platinum({
    required this.text,
    super.key,
  }) : _plan = SponsorPlan.platinum;

  const SponsorPlanHeader.gold({
    required this.text,
    super.key,
  }) : _plan = SponsorPlan.gold;

  const SponsorPlanHeader.silver({
    required this.text,
    super.key,
  }) : _plan = SponsorPlan.silver;

  final String text;
  final SponsorPlan _plan;

  @override
  Widget build(BuildContext context) {
    final gradient = switch (_plan) {
      SponsorPlan.platinum => GradientConstant.sponsor.platinum,
      SponsorPlan.gold => GradientConstant.sponsor.gold,
      SponsorPlan.silver => GradientConstant.sponsor.silver,
    };
    return ResponsiveWidget(
      largeWidget: SectionHeader.centerAlignment(
        text: text,
        style: AppTextStyle.pcHeading2,
        gradient: gradient,
      ),
      smallWidget: SectionHeader.centerAlignment(
        text: text,
        style: AppTextStyle.spHeading2,
        gradient: gradient,
      ),
    );
  }
}
