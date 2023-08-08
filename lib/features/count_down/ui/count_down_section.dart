import 'package:confwebsite2023/core/foundation/duration_ex.dart';
import 'package:confwebsite2023/core/foundation/iterable_ex.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/conference/model/target_day.dart';
import 'package:confwebsite2023/features/count_down/model/count_down_timer.dart';
import 'package:confwebsite2023/features/count_down/model/count_down_unit.dart';
import 'package:confwebsite2023/features/count_down/ui/count_down_unit_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CountDownSection extends ConsumerWidget {
  const CountDownSection({
    super.key,
  });

  static bool isVisible(DateTime now) => !targetDate.difference(now).isNegative;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remaining = targetDate.difference(ref.watch(nowProvider));

    return Visibility(
      visible: !remaining.isNegative,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ...CountDownUnit.values.map(
                (unit) {
                  return CountDownUnitItem(
                    unit: unit,
                    value: switch (unit) {
                      CountDownUnit.day => remaining.clockedDays,
                      CountDownUnit.hour => remaining.clockedHours,
                      CountDownUnit.minute => remaining.clockedMinutes,
                      CountDownUnit.second => remaining.clockedSeconds,
                    },
                  );
                },
              ),
            ]
                .insertingEach(() => SvgPicture.asset(Assets.icons.dot))
                .insertingEach(() => Spaces.horizontal_40),
          ),
        ),
      ),
    );
  }
}
