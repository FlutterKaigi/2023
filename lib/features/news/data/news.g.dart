// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_News',
      json,
      ($checkedConvert) {
        final val = _$_News(
          text: $checkedConvert('text', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String?),
          startedAt:
              $checkedConvert('startedAt', (v) => DateTime.parse(v as String)),
          endedAt: $checkedConvert(
              'endedAt', (v) => _dateTimeFromJson(v as String?)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'text': instance.text,
      'url': instance.url,
      'startedAt': instance.startedAt.toIso8601String(),
      'endedAt': _dateTimeToJson(instance.endedAt),
    };
