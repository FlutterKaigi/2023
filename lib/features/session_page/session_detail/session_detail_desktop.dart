import 'dart:math';

import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/components/social_share.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/session_page/data/session_model.dart';
import 'package:confwebsite2023/features/session_page/session_detail/time_table.dart';
import 'package:flutter/material.dart';

class SessionDetailDesktop extends StatelessWidget {
  const SessionDetailDesktop({
    required this.sessionModel,
    super.key,
  });

  final SessionModel sessionModel;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final largeScreenSize = ResponsiveWidget.largeScreenSize.toDouble();
    final horizontal = max<double>(16, (width - largeScreenSize) / 4.0);
    final padding = EdgeInsets.symmetric(horizontal: horizontal);
    final gradient = GradientConstant.accent.primary;
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 800,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF602678),
                  Color(0x004B0082),
                ],
              ),
            ),
          ),
        ),
        CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Spaces.vertical_80,
            ),
            _Sliver(
              padding: padding,
              child: SectionHeader.leftAlignment(
                text: sessionModel.isSponsor ? 'Sponsor Sessions' : 'Sessions',
                gradient: gradient,
                style: AppTextStyle.pcHeading1,
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_80,
            ),
            _Sliver(
              padding: padding,
              child: const SocialShare(
                //TODO http://localhost:55796/sponsors/yumemi #flutterkaigi via @FlutterKaigiのようなURLを取得する
                shareUrl: '',
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_20,
            ),
            _Sliver(
              padding: padding,
              child: ProposalDesktop(
                sessionModel: sessionModel,
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_10,
            ),
            _Sliver(
              padding: padding,
              child: const SocialShare(
                //TODO http://localhost:55796/sponsors/yumemi #flutterkaigi via @FlutterKaigiのようなURLを取得する
                shareUrl: '',
              ),
            ),
            _Sliver(
              padding: padding,
              child: Spaces.vertical_200,
            ),
            const SliverToBoxAdapter(
              child: Footer(),
            ),
          ],
        ),
      ],
    );
  }
}

class _Sliver extends StatelessWidget {
  const _Sliver({
    required this.child,
    required this.padding,
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding,
      sliver: SliverToBoxAdapter(
        child: child,
      ),
    );
  }
}
