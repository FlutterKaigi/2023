import 'dart:convert';

import 'package:confwebsite2023/features/news/data/news.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_data_source.g.dart';

@Riverpod(keepAlive: true)
NewsDataSource newsDataSource(NewsDataSourceRef ref) => NewsDataSource();

class NewsDataSource {
  Future<List<News>> fetchNewsItems() async {
    final data = await rootBundle.loadString('assets/data/news/news.json');
    final json = jsonDecode(data) as Map<String, dynamic>;
    return (json['items'] as List<dynamic>)
        .map(
          (e) => News.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }
}
