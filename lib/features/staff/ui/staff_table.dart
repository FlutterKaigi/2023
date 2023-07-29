import 'dart:math';

import 'package:collection/collection.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/data/staff_provider.dart';
import 'package:confwebsite2023/features/staff/ui/staff_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StaffTable extends ConsumerWidget {
  const StaffTable({
    super.key,
  });

  static const spacing = 16.0;
  // 余白を考慮しつつ 最大横に何個並べられるかを計算する
  static int calculateItemCount({
    required double maxWidth,
  }) {
    // yを最大横幅 xを横の最大要素数として、
    // y = 171x + spacing * (x - 1)
    // y + spacing = (171 + spacing) * x
    // x = (y + spacing) / (171 + spacing)
    final result = ((maxWidth - spacing) / (171 + spacing)).floor();
    return switch (result) {
      < 2 => 2,
      > 5 => 5,
      _ => result,
    };
  }

  static double calculateHeightByStaff({
    required BuildContext context,
    required Staff staff,
    required double width,
  }) {
    final theme = Theme.of(context);
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    const cardMargin = 4;
    const horizontalPadding = 48;
    const iconHeight = 120;
    const topPadding = 16;
    const betweenIconAndDisplayName = 16;
    const betweenDisplayNameAndIntroduction = 8;
    const betweenIntroductionAndSnsIcon = 16;
    const snsIconHeight = 40;
    const bottomPadding = 16;
    final displayNameHeight = calculateTextExtent(
      text: staff.displayName,
      style: theme.textTheme.titleLarge,
      maxWidth: width - horizontalPadding - cardMargin * 2,
      textScaleFactor: textScaleFactor,
    );

    final introductionHeight = calculateTextExtent(
      text: staff.introduction,
      style: theme.textTheme.bodyLarge,
      maxWidth: width - horizontalPadding - cardMargin * 2,
      textScaleFactor: textScaleFactor,
    );

    return topPadding +
        iconHeight +
        betweenIconAndDisplayName +
        displayNameHeight +
        betweenDisplayNameAndIntroduction +
        introductionHeight +
        betweenIntroductionAndSnsIcon +
        snsIconHeight +
        bottomPadding +
        cardMargin * 2;
  }

  static double calculateTextExtent({
    required String text,
    required double maxWidth,
    required double textScaleFactor,
    TextStyle? style,
  }) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: style,
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      textScaleFactor: textScaleFactor,
    )..layout(maxWidth: maxWidth);
    return textPainter.height;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sortedStaffsProvider);
    final width = MediaQuery.of(context).size.width;
    final largeScreenSize = ResponsiveWidget.largeScreenSize.toDouble();
    final maxWidth = min(
      width - (16 * 2),
      largeScreenSize + ((width - largeScreenSize) / 2),
    );
    final crossAxisCount = calculateItemCount(maxWidth: maxWidth);
    final itemWidth =
        (maxWidth - spacing * (crossAxisCount - 1)) / crossAxisCount;

    return state.when(
      data: (data) {
        final maxHeight = data
            .map(
              (staff) => calculateHeightByStaff(
                context: context,
                staff: staff,
                width: itemWidth,
              ),
            )
            .max;
        return SliverGrid.builder(
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: maxHeight,
            mainAxisSpacing: spacing,
            crossAxisSpacing: spacing,
            crossAxisCount: crossAxisCount,
          ),
          itemBuilder: (context, index) {
            return StaffItem(
              staff: data[index],
            );
          },
        );
      },
      error: (error, stackTrace) {
        return SliverToBoxAdapter(child: Text('エラーが発生しました: $error'));
      },
      loading: () {
        return const SliverToBoxAdapter(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
