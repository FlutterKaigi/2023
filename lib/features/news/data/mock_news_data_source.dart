import 'dart:convert';

import 'package:confwebsite2023/features/news/data/news.dart';
import 'package:confwebsite2023/features/news/data/news_data_source.dart';

class MockNewsDataSource implements NewsDataSource {
  @override
  Future<List<News>> fetchNewsItems() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    final jsonResult = json.decode(_mockBody) as Map<String, dynamic>;
    final itemsJson = jsonResult['items'] as List<dynamic>;
    return itemsJson
        .cast<Map<String, dynamic>>()
        .map(
          News.fromJson,
        )
        .toList();
  }
}

const _mockBody = '''
{
  "skip": 0,
  "limit": 100,
  "total": 1,
  "items": [
    {
      "_id": "_id",
      "_sys": {
        "createdAt": "2022-01-01T00:00:00.000Z",
        "updatedAt": "2022-01-01T00:00:00.000Z",
        "raw": {
          "createdAt": "2022-01-01T00:00:00.000Z",
          "updatedAt": "2022-01-01T00:00:00.000Z",
          "firstPublishedAt": "2022-01-01T00:00:00.000Z",
          "publishedAt": "2022-01-01T00:00:00.000Z"
        }
      },
      "text": "ニューステキスト(with url)",
      "url": "https://google.com",
      "startedAt": "2023-06-01T00:00:00.000Z",
      "endedAt": "2023-10-01T00:00:00.000Z"
    },
    {
      "_id": "_id",
      "_sys": {
        "createdAt": "2022-01-01T00:00:00.000Z",
        "updatedAt": "2022-01-01T00:00:00.000Z",
        "raw": {
          "createdAt": "2022-01-01T00:00:00.000Z",
          "updatedAt": "2022-01-01T00:00:00.000Z",
          "firstPublishedAt": "2022-01-01T00:00:00.000Z",
          "publishedAt": "2022-01-01T00:00:00.000Z"
        }
      },
      "text": "ニューステキスト(without url)",
      "url": null,
      "startedAt": "2023-06-02T00:00:00.000Z",
      "endedAt": "2023-10-01T00:00:00.000Z"
    },
     {
      "_id": "_id",
      "_sys": {
        "createdAt": "2022-01-01T00:00:00.000Z",
        "updatedAt": "2022-01-01T00:00:00.000Z",
        "raw": {
          "createdAt": "2022-01-01T00:00:00.000Z",
          "updatedAt": "2022-01-01T00:00:00.000Z",
          "firstPublishedAt": "2022-01-01T00:00:00.000Z",
          "publishedAt": "2022-01-01T00:00:00.000Z"
        }
      },
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
      "url": "https://ja.wikipedia.org/wiki/Lorem_ipsum",
      "startedAt": "2023-06-10T00:00:00.000Z",
      "endedAt": "2023-10-01T00:00:00.000Z"
    },
    {
      "_id": "_id",
      "_sys": {
        "createdAt": "2022-01-01T00:00:00.000Z",
        "updatedAt": "2022-01-01T00:00:00.000Z",
        "raw": {
          "createdAt": "2022-01-01T00:00:00.000Z",
          "updatedAt": "2022-01-01T00:00:00.000Z",
          "firstPublishedAt": "2022-01-01T00:00:00.000Z",
          "publishedAt": "2022-01-01T00:00:00.000Z"
        }
      },
      "text": "未来のニューステキスト(without url)",
      "url": null,
      "startedAt": "2024-06-01T00:00:00.000Z",
      "endedAt": "2024-10-01T00:00:00.000Z"
    },
    {
      "_id": "_id",
      "_sys": {
        "createdAt": "2022-01-01T00:00:00.000Z",
        "updatedAt": "2022-01-01T00:00:00.000Z",
        "raw": {
          "createdAt": "2022-01-01T00:00:00.000Z",
          "updatedAt": "2022-01-01T00:00:00.000Z",
          "firstPublishedAt": "2022-01-01T00:00:00.000Z",
          "publishedAt": "2022-01-01T00:00:00.000Z"
        }
      },
      "text": "昔のニューステキスト(without url)",
      "url": null,
      "startedAt": "2022-06-01T00:00:00.000Z",
      "endedAt": "2022-10-01T00:00:00.000Z"
    }
  ]
}
''';
