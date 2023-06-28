import 'dart:convert';

import 'package:confwebsite2023/features/news/data/news.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_data_source.g.dart';

@Riverpod(keepAlive: true)
NewsDataSource newsDataSource(NewsDataSourceRef ref) => NewsDataSource();

class NewsDataSource {
  static const spaceUid = 'flutterkaigi';
  static const appUid = 'flutterkaigi-2023';

  Future<List<News>> fetchNewsItems() async {
    final result = await http.get(
      Uri.parse('https://$spaceUid.cdn.newt.so/v1/$appUid/news'),
      headers: {
        'Authorization': 'Bearer ${dotenv.env['NEWT_CDN_API_TOKEN']!}',
      },
    );
    final jsonResult = json.decode(result.body) as Map<String, dynamic>;
    final itemsJson = jsonResult['items'] as List<dynamic>;
    return itemsJson
        .map(
          (e) => News.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }
}
