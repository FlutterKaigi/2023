import 'dart:convert';

import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/features/staff/data/staff_data_source.dart';

class MockStaffDataSource implements StaffDataSource {
  @override
  Future<List<Staff>> fetchStaffItems() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    final jsonResult = json.decode(mockBody) as Map<String, dynamic>;
    final itemsJson = jsonResult['items'] as List<dynamic>;
    return itemsJson
        .map(
          (e) => Staff.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }
}

const mockBody = '''
{
    "skip": 0,
    "limit": 100,
    "total": 2,
    "items": [
        {
            "_id": "646e1a03713a3e21a252c79b",
            "_sys": {
                "raw": {
                    "createdAt": "2023-05-24T14:06:59.211Z",
                    "updatedAt": "2023-05-25T10:30:44.635Z",
                    "firstPublishedAt": "2023-05-24T14:06:59.211Z",
                    "publishedAt": "2023-05-25T10:30:44.635Z"
                },
                "customOrder": 2,
                "createdAt": "2023-05-24T14:06:59.211Z",
                "updatedAt": "2023-05-25T10:30:44.635Z"
            },
            "displayName": "FlutterKaigi 2023",
            "image": {
                "_id": "646e0985beb9b686e8806757",
                "altText": "",
                "description": "",
                "fileName": "FlutterKaigi.png",
                "fileSize": 8181,
                "fileType": "image/jpeg",
                "height": 300,
                "metadata": {},
                "src": "https://pbs.twimg.com/profile_images/1597197332948262912/Q4PO_DK-_400x400.jpg",
                "title": "",
                "width": 300
            },
            "introduction": "FlutterKaigi 2023 Organization",
            "sns": [
              {
                "type": "twitter",
                "userName": "FlutterKaigi"
              },
              {
                "type": "github",
                "userName": "FlutterKaigi"
              }
            ]
        },
         {
            "_id": "646e1a03713a3e21a252c79b",
            "_sys": {
                "raw": {
                    "createdAt": "2023-05-24T14:06:59.211Z",
                    "updatedAt": "2023-05-25T10:30:44.635Z",
                    "firstPublishedAt": "2023-05-24T14:06:59.211Z",
                    "publishedAt": "2023-05-25T10:30:44.635Z"
                },
                "customOrder": 2,
                "createdAt": "2023-05-24T14:06:59.211Z",
                "updatedAt": "2023-05-25T10:30:44.635Z"
            },
            "displayName": "Steve Jobs",
            "image": {
                "_id": "646e0985beb9b686e8806757",
                "altText": "",
                "description": "",
                "fileName": "FlutterKaigi.png",
                "fileSize": 8181,
                "fileType": "image/jpeg",
                "height": 300,
                "metadata": {},
                "src": "https://cdn.britannica.com/04/171104-050-AEFE3141/Steve-Jobs-iPhone-2010.jpg",
                "title": "",
                "width": 300
            },
            "introduction": "Apple Inc. Founder",
            "sns": [
              {
                "type": "twitter",
                "userName": "FlutterKaigi"
              },
              {
                "type": "github",
                "userName": "FlutterKaigi"
              }
            ]
        },
        {
            "_id": "646e1a03713a3e21a252c79b",
            "_sys": {
                "raw": {
                    "createdAt": "2023-05-24T14:06:59.211Z",
                    "updatedAt": "2023-05-25T10:30:44.635Z",
                    "firstPublishedAt": "2023-05-24T14:06:59.211Z",
                    "publishedAt": "2023-05-25T10:30:44.635Z"
                },
                "customOrder": 2,
                "createdAt": "2023-05-24T14:06:59.211Z",
                "updatedAt": "2023-05-25T10:30:44.635Z"
            },
            "displayName": "Tim Cook",
            "image": {
                "_id": "646e0985beb9b686e8806757",
                "altText": "",
                "description": "",
                "fileName": "FlutterKaigi.png",
                "fileSize": 8181,
                "fileType": "image/jpeg",
                "height": 300,
                "metadata": {},
                "src": "https://www.apple.com/leadership/images/bio/tim-cook_image.png.small_2x.png",
                "title": "",
                "width": 300
            },
            "introduction": "Chief Executive Officer",
            "sns": [
              {
                "type": "twitter",
                "userName": "FlutterKaigi"
              },
              {
                "type": "github",
                "userName": "FlutterKaigi"
              }
            ]
        },
         {
            "_id": "646e1a03713a3e21a252c79b",
            "_sys": {
                "raw": {
                    "createdAt": "2023-05-24T14:06:59.211Z",
                    "updatedAt": "2023-05-25T10:30:44.635Z",
                    "firstPublishedAt": "2023-05-24T14:06:59.211Z",
                    "publishedAt": "2023-05-25T10:30:44.635Z"
                },
                "customOrder": 2,
                "createdAt": "2023-05-24T14:06:59.211Z",
                "updatedAt": "2023-05-25T10:30:44.635Z"
            },
            "displayName": "Craig Federighi",
            "image": {
                "_id": "646e0985beb9b686e8806757",
                "altText": "",
                "description": "",
                "fileName": "FlutterKaigi.png",
                "fileSize": 8181,
                "fileType": "image/jpeg",
                "height": 300,
                "metadata": {},
                "src": "https://www.apple.com/leadership/images/bio/craig_federighi_image.png.small_2x.png",
                "title": "",
                "width": 300
            },
            "introduction": "Craig Federighi is Apple’s senior vice president of Software Engineering, reporting to CEO Tim Cook.",
            "sns": [
              {
                "type": "twitter",
                "userName": "FlutterKaigi"
              },
              {
                "type": "github",
                "userName": "FlutterKaigi"
              }
            ]
        }
    ]
}
''';
