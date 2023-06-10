// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StaffItemModel _$$_StaffItemModelFromJson(Map<String, dynamic> json) =>
    _$_StaffItemModel(
      id: json['_id'] as String,
      sys: StaffItemSysModel.fromJson(json['_sys'] as Map<String, dynamic>),
      displayName: json['displayName'] as String,
      twitter: json['twitter'] as String,
      image:
          StaffItemImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StaffItemModelToJson(_$_StaffItemModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      '_sys': instance.sys,
      'displayName': instance.displayName,
      'twitter': instance.twitter,
      'image': instance.image,
    };

_$_StaffItemSysModel _$$_StaffItemSysModelFromJson(Map<String, dynamic> json) =>
    _$_StaffItemSysModel(
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      customOrder: json['customOrder'] as int,
    );

Map<String, dynamic> _$$_StaffItemSysModelToJson(
        _$_StaffItemSysModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'customOrder': instance.customOrder,
    };

_$_StaffItemImageModel _$$_StaffItemImageModelFromJson(
        Map<String, dynamic> json) =>
    _$_StaffItemImageModel(
      altText: json['altText'] as String,
      description: json['description'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
      src: json['src'] as String,
    );

Map<String, dynamic> _$$_StaffItemImageModelToJson(
        _$_StaffItemImageModel instance) =>
    <String, dynamic>{
      'altText': instance.altText,
      'description': instance.description,
      'height': instance.height,
      'width': instance.width,
      'src': instance.src,
    };
