// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_item_model.freezed.dart';
part 'staff_item_model.g.dart';

@freezed
class StaffItemModel with _$StaffItemModel {
  const factory StaffItemModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: '_sys') required StaffItemSysModel sys,
    required String displayName,
    required String twitter,
    required StaffItemImageModel image,
  }) = _StaffItemModel;

  factory StaffItemModel.fromJson(Map<String, dynamic> json) =>
      _$StaffItemModelFromJson(json);
}

@freezed
class StaffItemSysModel with _$StaffItemSysModel {
  const factory StaffItemSysModel({
    required DateTime createdAt,
    required DateTime updatedAt,
    required int customOrder,
  }) = _StaffItemSysModel;

  factory StaffItemSysModel.fromJson(Map<String, dynamic> json) =>
      _$StaffItemSysModelFromJson(json);
}

@freezed
class StaffItemImageModel with _$StaffItemImageModel {
  const factory StaffItemImageModel({
    required String altText,
    required String description,
    required int height,
    required int width,
    required String src,
  }) = _StaffItemImageModel;

  factory StaffItemImageModel.fromJson(Map<String, dynamic> json) =>
      _$StaffItemImageModelFromJson(json);
}
