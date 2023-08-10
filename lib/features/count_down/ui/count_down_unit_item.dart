import 'package:confwebsite2023/core/foundation/iterable_ex.dart';
import 'package:confwebsite2023/core/theme/dimension.dart';
import 'package:confwebsite2023/features/count_down/model/count_down_unit.dart';
import 'package:flutter/material.dart';

class CountDownUnitItem extends StatelessWidget {
  const CountDownUnitItem({
    required this.unit,
    required this.value,
    super.key,
  });

  final CountDownUnit unit;
  final int value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
    children: <Widget>[
        Text(
          value.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 57,
            fontWeight: FontWeight.w900,
            height: 1,
          ),
        ),
        Text(
          switch (unit) {
            CountDownUnit.day => 'DAYS',
            CountDownUnit.hour => 'HOURS',
            CountDownUnit.minute => 'MINUTES',
            CountDownUnit.second => 'SECONDS',
          },
          style: TextStyle(
            color: theme.colorScheme.secondary,
            fontSize: 24,
            height: 1,
          ),
        ),
      ].insertingEach(() => Spaces.vertical_5),
    );
  }
}
