// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Track',
      json,
      ($checkedConvert) {
        final val = _$_Track(
          name: $checkedConvert('name', (v) => v as String),
          sort: $checkedConvert('sort', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'name': instance.name,
      'sort': instance.sort,
    };
