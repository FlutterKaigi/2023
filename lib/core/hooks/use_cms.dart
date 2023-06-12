import 'dart:async';
import 'dart:convert';

import 'package:confwebsite2023/core/models/staff.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

const spaceUid = 'flutterkaigi';
const appUid = 'flutterkaigi-2023';

Future<List<StaffItemModel>> _fetchItems(String modelUid) async {
    final result = await http.get(
      Uri.parse('https://$spaceUid.cdn.newt.so/v1/$appUid/$modelUid'),
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

  final _fetch = Future<List<StaffItemModel>>.microtask(
    () async => _fetchItems('staff'),
  );

UseCMS useCMS() {
  return UseCMS(fetchItems: _fetch);
}

class UseCMS {
  UseCMS({required this.fetchItems});
  final Future<List<StaffItemModel>> fetchItems;
}
