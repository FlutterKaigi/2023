// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Staff _$$_StaffFromJson(Map<String, dynamic> json) => _$_Staff(
      id: json['_id'] as String,
      displayName: json['displayName'] as String,
      image: StaffImage.fromJson(json['image'] as Map<String, dynamic>),
      introduction: json['introduction'] as String,
      sns: (json['sns'] as List<dynamic>)
          .map((e) => Sns.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StaffToJson(_$_Staff instance) => <String, dynamic>{
      '_id': instance.id,
      'displayName': instance.displayName,
      'image': instance.image,
      'introduction': instance.introduction,
      'sns': instance.sns,
    };

_$_StaffImage _$$_StaffImageFromJson(Map<String, dynamic> json) =>
    _$_StaffImage(
      altText: json['altText'] as String,
      description: json['description'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
      src: json['src'] as String,
    );

Map<String, dynamic> _$$_StaffImageToJson(_$_StaffImage instance) =>
    <String, dynamic>{
      'altText': instance.altText,
      'description': instance.description,
      'height': instance.height,
      'width': instance.width,
      'src': instance.src,
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
