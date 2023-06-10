// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StaffItemModel _$$_StaffItemModelFromJson(Map<String, dynamic> json) =>
    _$_StaffItemModel(
      id: json['id'] as String,
      displayName: json['displayName'] as String,
      twitter: json['twitter'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      image: json['image'],
    );

Map<String, dynamic> _$$_StaffItemModelToJson(_$_StaffItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'twitter': instance.twitter,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'image': instance.image,
    };
