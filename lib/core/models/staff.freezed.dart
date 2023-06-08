// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StaffItem _$StaffItemFromJson(Map<String, dynamic> json) {
  return _StaffItem.fromJson(json);
}

/// @nodoc
mixin _$StaffItem {
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get twitter => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffItemCopyWith<StaffItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffItemCopyWith<$Res> {
  factory $StaffItemCopyWith(StaffItem value, $Res Function(StaffItem) then) =
      _$StaffItemCopyWithImpl<$Res, StaffItem>;
  @useResult
  $Res call(
      {String id,
      String displayName,
      String twitter,
      DateTime createdAt,
      DateTime updatedAt,
      dynamic image});
}

/// @nodoc
class _$StaffItemCopyWithImpl<$Res, $Val extends StaffItem>
    implements $StaffItemCopyWith<$Res> {
  _$StaffItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? twitter = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: null == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffItemCopyWith<$Res> implements $StaffItemCopyWith<$Res> {
  factory _$$_StaffItemCopyWith(
          _$_StaffItem value, $Res Function(_$_StaffItem) then) =
      __$$_StaffItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String displayName,
      String twitter,
      DateTime createdAt,
      DateTime updatedAt,
      dynamic image});
}

/// @nodoc
class __$$_StaffItemCopyWithImpl<$Res>
    extends _$StaffItemCopyWithImpl<$Res, _$_StaffItem>
    implements _$$_StaffItemCopyWith<$Res> {
  __$$_StaffItemCopyWithImpl(
      _$_StaffItem _value, $Res Function(_$_StaffItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? twitter = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? image = freezed,
  }) {
    return _then(_$_StaffItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: null == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StaffItem implements _StaffItem {
  const _$_StaffItem(
      {required this.id,
      required this.displayName,
      required this.twitter,
      required this.createdAt,
      required this.updatedAt,
      required this.image});

  factory _$_StaffItem.fromJson(Map<String, dynamic> json) =>
      _$$_StaffItemFromJson(json);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final String twitter;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final dynamic image;

  @override
  String toString() {
    return 'StaffItem(id: $id, displayName: $displayName, twitter: $twitter, createdAt: $createdAt, updatedAt: $updatedAt, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayName, twitter,
      createdAt, updatedAt, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffItemCopyWith<_$_StaffItem> get copyWith =>
      __$$_StaffItemCopyWithImpl<_$_StaffItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffItemToJson(
      this,
    );
  }
}

abstract class _StaffItem implements StaffItem {
  const factory _StaffItem(
      {required final String id,
      required final String displayName,
      required final String twitter,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final dynamic image}) = _$_StaffItem;

  factory _StaffItem.fromJson(Map<String, dynamic> json) =
      _$_StaffItem.fromJson;

  @override
  String get id;
  @override
  String get displayName;
  @override
  String get twitter;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  dynamic get image;
  @override
  @JsonKey(ignore: true)
  _$$_StaffItemCopyWith<_$_StaffItem> get copyWith =>
      throw _privateConstructorUsedError;
}
