

import 'package:freezed_annotation/freezed_annotation.dart';
part 'staff.freezed.dart';
part 'staff.g.dart';

@freezed
class StaffItem with _$StaffItem {
  const factory StaffItem({
    required String id,
    required String displayName,
    required String twitter,
    required DateTime createdAt,
    required DateTime updatedAt,
    required dynamic image,
  }) = _StaffItem;


  factory StaffItem.fromJson(Map<String, dynamic> json) =>
    _$StaffItemFromJson(json);
}
