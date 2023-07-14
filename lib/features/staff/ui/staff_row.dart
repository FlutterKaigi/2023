import 'package:confwebsite2023/core/foundation/iterable_ex.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/ui/staff_item.dart';
import 'package:flutter/widgets.dart';

class StaffRow extends StatelessWidget {
  const StaffRow({
    required this.staffs,
    required this.itemWidth,
    super.key,
  });

  final List<Staff> staffs;
  final double itemWidth;

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

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...staffs.map<Widget>(
          (staff) => SizedBox(
            width: itemWidth,
            child: StaffItem(staff: staff),
          ),
        )
      ].insertingEach(
        () => const SizedBox(width: StaffItem.spacing),
      ),
    );
  }
}
