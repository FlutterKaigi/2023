import 'dart:convert';

import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_data_source.g.dart';

@Riverpod(keepAlive: true)
StaffDataSource staffDataSource(StaffDataSourceRef ref) => StaffDataSource();

class StaffDataSource {
  Future<List<Staff>> fetchStaffItems() async {
    final data = await rootBundle.loadString(Assets.data.staffv2.staffv2);
    final json = jsonDecode(data) as Map<String, dynamic>;
    return (json['items'] as List<dynamic>)
        .map(
          (e) => Staff.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }
}
