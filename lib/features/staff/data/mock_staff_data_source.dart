import 'dart:convert';

import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/data/staff_data_source.dart';

class MockStaffDataSource implements StaffDataSource {
  @override
  Future<List<Staff>> fetchStaffItems() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    final jsonResult = json.decode(_mockBody) as Map<String, dynamic>;
    final itemsJson = jsonResult['items'] as List<dynamic>;
    return itemsJson
        .map(
          (e) => Staff.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }
}

const _mockBody = '''
{
  "items": [
    {
      "displayName": "FlutterKaigi 2023",
      "introduction": "FlutterKaigi 2023 Organization",
      "sns": [
        {
          "type": "twitter",
          "value": "FlutterKaigi"
        },
        {
          "type": "github",
          "value": "FlutterKaigi"
        },
        {
          "type": "zenn",
          "value": "zenn"
        },
        {
          "type": "note",
          "value": "info"
        },
        {
          "type": "url",
          "value": "https://flutterkaigi.jp"
        }
      ],
      "imageName": "FlutterKaigi.png"
    },
    {
      "displayName": "Aaaaa Bbbbb",
      "introduction": "Chief Executive Officer",
      "sns": [
        {
          "type": "twitter",
          "value": "FlutterKaigi"
        },
        {
          "type": "github",
          "value": "FlutterKaigi"
        },
        {
          "type": "zenn",
          "value": "zenn"
        },
        {
          "type": "url",
          "value": "https://flutterkaigi.jp"
        }
      ],
      "imageName": "FlutterKaigi.png"
    },
    {
      "displayName": "Ccccc Ddddd",
      "introduction": "Chief Technology Officer",
      "sns": [
        {
          "type": "twitter",
          "value": "FlutterKaigi"
        },
        {
          "type": "github",
          "value": "FlutterKaigi"
        }
      ],
      "imageName": "FlutterKaigi.png"
    },
    {
      "displayName": "Xxxxx Yyyyy",
      "introduction": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "sns": [
        {
          "type": "twitter",
          "value": "FlutterKaigi"
        },
        {
          "type": "github",
          "value": "FlutterKaigi"
        }
      ],
      "imageName": "FlutterKaigi.png"
    }
  ]
}
''';
