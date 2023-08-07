// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Staff _$$_StaffFromJson(Map<String, dynamic> json) => _$_Staff(
      displayName: json['displayName'] as String,
      imageName: json['imageName'] as String,
      sns: (json['sns'] as List<dynamic>)
          .map((e) => Sns.fromJson(e as Map<String, dynamic>))
          .toList(),
      introduction: json['introduction'] as String? ?? '',
    );

Map<String, dynamic> _$$_StaffToJson(_$_Staff instance) => <String, dynamic>{
      'displayName': instance.displayName,
      'imageName': instance.imageName,
      'sns': instance.sns,
      'introduction': instance.introduction,
    };

_$_Sns _$$_SnsFromJson(Map<String, dynamic> json) => _$_Sns(
      type: $enumDecode(_$SnsTypeEnumMap, json['type']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_SnsToJson(_$_Sns instance) => <String, dynamic>{
      'type': _$SnsTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$SnsTypeEnumMap = {
  SnsType.twitter: 'twitter',
  SnsType.github: 'github',
  SnsType.discord: 'discord',
  SnsType.qiita: 'qiita',
  SnsType.zenn: 'zenn',
  SnsType.note: 'note',
  SnsType.medium: 'medium',
  SnsType.url: 'url',
};
