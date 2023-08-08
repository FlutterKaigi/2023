import 'package:confwebsite2023/core/foundation/iterable_ex.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/count_down/model/count_down_unit.dart';
import 'package:confwebsite2023/features/count_down/ui/count_down_unit_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CountDownSection extends StatelessWidget {
  const CountDownSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ...CountDownUnit.values.map((unit) {
          return CountDownUnitItem(
            unit: unit,
            value: 0,
          );
        })
      ]
          .insertingEach(() => SvgPicture.asset(Assets.icons.dot))
          .insertingEach(() => Spaces.horizontal_40),
    );
  }
}
