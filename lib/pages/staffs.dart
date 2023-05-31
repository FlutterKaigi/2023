import 'package:confwebsite2023/core/sections/staff.dart';
import 'package:flutter/material.dart';

class Staffs extends StatelessWidget {
  const Staffs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        StaffSection(),
      ],
    );
  }
}
