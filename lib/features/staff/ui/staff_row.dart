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
