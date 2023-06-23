// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff.freezed.dart';
part 'staff.g.dart';

@freezed
class Staff with _$Staff {
  const factory Staff({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: '_sys') required StaffSys sys,
    required String displayName,
    required String twitter,
    required StaffImage image,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) =>
      _$StaffFromJson(json);
}

@freezed
class StaffSys with _$StaffSys {
  const factory StaffSys({
    required DateTime createdAt,
    required DateTime updatedAt,
    required int customOrder,
  }) = _StaffSys;

  factory StaffSys.fromJson(Map<String, dynamic> json) =>
      _$StaffSysFromJson(json);
}

@freezed
class StaffImage with _$StaffImage {
  const factory StaffImage({
    required String altText,
    required String description,
    required int height,
    required int width,
    required String src,
  }) = _StaffImage;

  factory StaffImage.fromJson(Map<String, dynamic> json) =>
      _$StaffImageFromJson(json);
}
