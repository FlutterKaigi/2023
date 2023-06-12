import 'dart:convert';

import 'package:confwebsite2023/core/models/staff.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_data_source.g.dart';

@Riverpod(keepAlive: true)
StaffDataSource staffDataSource(StaffDataSourceRef ref) => StaffDataSource();

class StaffDataSource {
  static const spaceUid = 'flutterkaigi';
  static const appUid = 'flutterkaigi-2023';

  Future<List<StaffItemModel>> fetchStaffItems() async {
    final result = await http.get(
      Uri.parse('https://$spaceUid.cdn.newt.so/v1/$appUid/staff'),
      headers: {
        'Authorization': 'Bearer ${dotenv.env['NEWT_CDN_API_TOKEN']!}',
      },
    );
    final jsonResult = json.decode(result.body) as Map<String, dynamic>;
    final itemsJson = jsonResult['items'] as List<dynamic>;
    return itemsJson
        .map(
          (e) => StaffItemModel.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }
}
