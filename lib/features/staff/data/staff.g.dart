// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Staff _$$_StaffFromJson(Map<String, dynamic> json) => _$_Staff(
      id: json['_id'] as String,
      sys: StaffSys.fromJson(json['_sys'] as Map<String, dynamic>),
      displayName: json['displayName'] as String,
      twitter: json['twitter'] as String,
      image: StaffImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StaffToJson(_$_Staff instance) => <String, dynamic>{
      '_id': instance.id,
      '_sys': instance.sys,
      'displayName': instance.displayName,
      'twitter': instance.twitter,
      'image': instance.image,
    };

_$_StaffSys _$$_StaffSysFromJson(Map<String, dynamic> json) => _$_StaffSys(
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      customOrder: json['customOrder'] as int,
    );

Map<String, dynamic> _$$_StaffSysToJson(_$_StaffSys instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'customOrder': instance.customOrder,
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
