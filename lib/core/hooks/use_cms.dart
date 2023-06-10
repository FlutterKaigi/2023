import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

const spaceUid = 'flutterkaigi';
const appUid = 'flutterkaigi-2023';

UseCMS useCMS() {
  Future<List<dynamic>> fetchItems(String modelUid) async {
    final result = await http.get(
      Uri.parse('https://$spaceUid.cdn.newt.so/v1/$appUid/$modelUid'),
      headers: {
        'Authorization': 'Bearer ${dotenv.env['NEWT_CDN_API_TOKEN']!}',
      },
    );

    final List<dynamic> itemsJson = json.decode(result.body)['items'];
    return itemsJson.toList();
  }

  return UseCMS(fetchItems: fetchItems);
}

class UseCMS {
  UseCMS({required this.fetchItems});
  final Future<List<dynamic>> Function(String staff) fetchItems;
}
