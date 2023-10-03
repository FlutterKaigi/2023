// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeslotSession _$$TimeslotSessionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TimeslotSession',
      json,
      ($checkedConvert) {
        final val = _$TimeslotSession(
          uuid: $checkedConvert('uuid', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          startsAt:
              $checkedConvert('starts_at', (v) => DateTime.parse(v as String)),
          lengthMin: $checkedConvert('length_min', (v) => v as int),
          track: $checkedConvert(
              'track', (v) => Track.fromJson(v as Map<String, dynamic>)),
          abstract: $checkedConvert('abstract', (v) => v as String?),
          speaker: $checkedConvert(
              'speaker',
              (v) => v == null
                  ? null
                  : Speaker.fromJson(v as Map<String, dynamic>)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'startsAt': 'starts_at',
        'lengthMin': 'length_min',
        r'$type': 'type'
      },
    );

Map<String, dynamic> _$$TimeslotSessionToJson(_$TimeslotSession instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'starts_at': instance.startsAt.toIso8601String(),
      'length_min': instance.lengthMin,
      'track': instance.track,
      'abstract': instance.abstract,
      'speaker': instance.speaker,
      'type': instance.$type,
    };

_$TalkSession _$$TalkSessionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TalkSession',
      json,
      ($checkedConvert) {
        final val = _$TalkSession(
          uuid: $checkedConvert('uuid', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          abstract: $checkedConvert('abstract', (v) => v as String),
          track: $checkedConvert(
              'track', (v) => Track.fromJson(v as Map<String, dynamic>)),
          startsAt:
              $checkedConvert('starts_at', (v) => DateTime.parse(v as String)),
          lengthMin: $checkedConvert('length_min', (v) => v as int),
          tags: $checkedConvert(
              'tags',
              (v) => (v as List<dynamic>)
                  .map((e) => Tag.fromJson(e as Map<String, dynamic>))
                  .toList()),
          speaker: $checkedConvert(
              'speaker', (v) => Speaker.fromJson(v as Map<String, dynamic>)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'startsAt': 'starts_at',
        'lengthMin': 'length_min',
        r'$type': 'type'
      },
    );

Map<String, dynamic> _$$TalkSessionToJson(_$TalkSession instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'url': instance.url,
      'title': instance.title,
      'abstract': instance.abstract,
      'track': instance.track,
      'starts_at': instance.startsAt.toIso8601String(),
      'length_min': instance.lengthMin,
      'tags': instance.tags,
      'speaker': instance.speaker,
      'type': instance.$type,
    };

_$LunchSession _$$LunchSessionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LunchSession',
      json,
      ($checkedConvert) {
        final val = _$LunchSession(
          startsAt:
              $checkedConvert('startsAt', (v) => DateTime.parse(v as String)),
          lengthMin: $checkedConvert('lengthMin', (v) => v as int),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$LunchSessionToJson(_$LunchSession instance) =>
    <String, dynamic>{
      'startsAt': instance.startsAt.toIso8601String(),
      'lengthMin': instance.lengthMin,
      'type': instance.$type,
    };
