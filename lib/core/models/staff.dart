import 'package:freezed_annotation/freezed_annotation.dart';
part 'staff.freezed.dart';
part 'staff.g.dart';

@freezed
class StaffItemModel with _$StaffItemModel {
  const factory StaffItemModel({
    required String id,
    required String displayName,
    required String twitter,
    required DateTime createdAt,
    required DateTime updatedAt,
    required dynamic image,
  }) = _StaffItemModel;

  factory StaffItemModel.fromJson(Map<String, dynamic> json) =>
      _$StaffItemModelFromJson(json);
}
