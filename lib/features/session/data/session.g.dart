// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeslotSession _$$TimeslotSessionFromJson(Map<String, dynamic> json) =>
    _$TimeslotSession(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      startsAt: DateTime.parse(json['starts_at'] as String),
      lengthMin: json['length_min'] as int,
      track: Track.fromJson(json['track'] as Map<String, dynamic>),
      abstract: json['abstract'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TimeslotSessionToJson(_$TimeslotSession instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'starts_at': instance.startsAt.toIso8601String(),
      'length_min': instance.lengthMin,
      'track': instance.track,
      'abstract': instance.abstract,
      'type': instance.$type,
    };

_$TalkSession _$$TalkSessionFromJson(Map<String, dynamic> json) =>
    _$TalkSession(
      uuid: json['uuid'] as String,
      url: json['url'] as String,
      title: json['title'] as String,
      abstract: json['abstract'] as String,
      track: Track.fromJson(json['track'] as Map<String, dynamic>),
      startsAt: DateTime.parse(json['starts_at'] as String),
      lengthMin: json['length_min'] as int,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      speaker: Speaker.fromJson(json['speaker'] as Map<String, dynamic>),
      $type: json['type'] as String?,
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
    _$LunchSession(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LunchSessionToJson(_$LunchSession instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
