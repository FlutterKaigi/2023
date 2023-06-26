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

Staff _$StaffFromJson(Map<String, dynamic> json) {
  return _Staff.fromJson(json);
}

/// @nodoc
mixin _$Staff {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_sys')
  StaffSys get sys => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get twitter => throw _privateConstructorUsedError;
  StaffImage get image => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffCopyWith<Staff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCopyWith<$Res> {
  factory $StaffCopyWith(Staff value, $Res Function(Staff) then) =
      _$StaffCopyWithImpl<$Res, Staff>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: '_sys') StaffSys sys,
      String displayName,
      String twitter,
      StaffImage image,
      String? position});

  $StaffSysCopyWith<$Res> get sys;
  $StaffImageCopyWith<$Res> get image;
}

/// @nodoc
class _$StaffCopyWithImpl<$Res, $Val extends Staff>
    implements $StaffCopyWith<$Res> {
  _$StaffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sys = null,
    Object? displayName = null,
    Object? twitter = null,
    Object? image = null,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as StaffSys,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: null == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as StaffImage,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaffSysCopyWith<$Res> get sys {
    return $StaffSysCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StaffImageCopyWith<$Res> get image {
    return $StaffImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StaffCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$$_StaffCopyWith(_$_Staff value, $Res Function(_$_Staff) then) =
      __$$_StaffCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: '_sys') StaffSys sys,
      String displayName,
      String twitter,
      StaffImage image,
      String? position});

  @override
  $StaffSysCopyWith<$Res> get sys;
  @override
  $StaffImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_StaffCopyWithImpl<$Res> extends _$StaffCopyWithImpl<$Res, _$_Staff>
    implements _$$_StaffCopyWith<$Res> {
  __$$_StaffCopyWithImpl(_$_Staff _value, $Res Function(_$_Staff) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sys = null,
    Object? displayName = null,
    Object? twitter = null,
    Object? image = null,
    Object? position = freezed,
  }) {
    return _then(_$_Staff(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as StaffSys,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: null == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as StaffImage,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Staff implements _Staff {
  const _$_Staff(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: '_sys') required this.sys,
      required this.displayName,
      required this.twitter,
      required this.image,
      required this.position});

  factory _$_Staff.fromJson(Map<String, dynamic> json) =>
      _$$_StaffFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: '_sys')
  final StaffSys sys;
  @override
  final String displayName;
  @override
  final String twitter;
  @override
  final StaffImage image;
  @override
  final String? position;

  @override
  String toString() {
    return 'Staff(id: $id, sys: $sys, displayName: $displayName, twitter: $twitter, image: $image, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Staff &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sys, displayName, twitter, image, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffCopyWith<_$_Staff> get copyWith =>
      __$$_StaffCopyWithImpl<_$_Staff>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffToJson(
      this,
    );
  }
}

abstract class _Staff implements Staff {
  const factory _Staff(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: '_sys') required final StaffSys sys,
      required final String displayName,
      required final String twitter,
      required final StaffImage image,
      required final String? position}) = _$_Staff;

  factory _Staff.fromJson(Map<String, dynamic> json) = _$_Staff.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: '_sys')
  StaffSys get sys;
  @override
  String get displayName;
  @override
  String get twitter;
  @override
  StaffImage get image;
  @override
  String? get position;
  @override
  @JsonKey(ignore: true)
  _$$_StaffCopyWith<_$_Staff> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffSys _$StaffSysFromJson(Map<String, dynamic> json) {
  return _StaffSys.fromJson(json);
}

/// @nodoc
mixin _$StaffSys {
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get customOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffSysCopyWith<StaffSys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffSysCopyWith<$Res> {
  factory $StaffSysCopyWith(StaffSys value, $Res Function(StaffSys) then) =
      _$StaffSysCopyWithImpl<$Res, StaffSys>;
  @useResult
  $Res call({DateTime createdAt, DateTime updatedAt, int customOrder});
}

/// @nodoc
class _$StaffSysCopyWithImpl<$Res, $Val extends StaffSys>
    implements $StaffSysCopyWith<$Res> {
  _$StaffSysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? customOrder = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customOrder: null == customOrder
          ? _value.customOrder
          : customOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffSysCopyWith<$Res> implements $StaffSysCopyWith<$Res> {
  factory _$$_StaffSysCopyWith(
          _$_StaffSys value, $Res Function(_$_StaffSys) then) =
      __$$_StaffSysCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, DateTime updatedAt, int customOrder});
}

/// @nodoc
class __$$_StaffSysCopyWithImpl<$Res>
    extends _$StaffSysCopyWithImpl<$Res, _$_StaffSys>
    implements _$$_StaffSysCopyWith<$Res> {
  __$$_StaffSysCopyWithImpl(
      _$_StaffSys _value, $Res Function(_$_StaffSys) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? customOrder = null,
  }) {
    return _then(_$_StaffSys(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customOrder: null == customOrder
          ? _value.customOrder
          : customOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StaffSys implements _StaffSys {
  const _$_StaffSys(
      {required this.createdAt,
      required this.updatedAt,
      required this.customOrder});

  factory _$_StaffSys.fromJson(Map<String, dynamic> json) =>
      _$$_StaffSysFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int customOrder;

  @override
  String toString() {
    return 'StaffSys(createdAt: $createdAt, updatedAt: $updatedAt, customOrder: $customOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffSys &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.customOrder, customOrder) ||
                other.customOrder == customOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, customOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffSysCopyWith<_$_StaffSys> get copyWith =>
      __$$_StaffSysCopyWithImpl<_$_StaffSys>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffSysToJson(
      this,
    );
  }
}

abstract class _StaffSys implements StaffSys {
  const factory _StaffSys(
      {required final DateTime createdAt,
      required final DateTime updatedAt,
      required final int customOrder}) = _$_StaffSys;

  factory _StaffSys.fromJson(Map<String, dynamic> json) = _$_StaffSys.fromJson;

  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  int get customOrder;
  @override
  @JsonKey(ignore: true)
  _$$_StaffSysCopyWith<_$_StaffSys> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffImage _$StaffImageFromJson(Map<String, dynamic> json) {
  return _StaffImage.fromJson(json);
}

/// @nodoc
mixin _$StaffImage {
  String get altText => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  String get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffImageCopyWith<StaffImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffImageCopyWith<$Res> {
  factory $StaffImageCopyWith(
          StaffImage value, $Res Function(StaffImage) then) =
      _$StaffImageCopyWithImpl<$Res, StaffImage>;
  @useResult
  $Res call(
      {String altText, String description, int height, int width, String src});
}

/// @nodoc
class _$StaffImageCopyWithImpl<$Res, $Val extends StaffImage>
    implements $StaffImageCopyWith<$Res> {
  _$StaffImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? altText = null,
    Object? description = null,
    Object? height = null,
    Object? width = null,
    Object? src = null,
  }) {
    return _then(_value.copyWith(
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffImageCopyWith<$Res>
    implements $StaffImageCopyWith<$Res> {
  factory _$$_StaffImageCopyWith(
          _$_StaffImage value, $Res Function(_$_StaffImage) then) =
      __$$_StaffImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String altText, String description, int height, int width, String src});
}

/// @nodoc
class __$$_StaffImageCopyWithImpl<$Res>
    extends _$StaffImageCopyWithImpl<$Res, _$_StaffImage>
    implements _$$_StaffImageCopyWith<$Res> {
  __$$_StaffImageCopyWithImpl(
      _$_StaffImage _value, $Res Function(_$_StaffImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? altText = null,
    Object? description = null,
    Object? height = null,
    Object? width = null,
    Object? src = null,
  }) {
    return _then(_$_StaffImage(
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StaffImage implements _StaffImage {
  const _$_StaffImage(
      {required this.altText,
      required this.description,
      required this.height,
      required this.width,
      required this.src});

  factory _$_StaffImage.fromJson(Map<String, dynamic> json) =>
      _$$_StaffImageFromJson(json);

  @override
  final String altText;
  @override
  final String description;
  @override
  final int height;
  @override
  final int width;
  @override
  final String src;

  @override
  String toString() {
    return 'StaffImage(altText: $altText, description: $description, height: $height, width: $width, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffImage &&
            (identical(other.altText, altText) || other.altText == altText) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, altText, description, height, width, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffImageCopyWith<_$_StaffImage> get copyWith =>
      __$$_StaffImageCopyWithImpl<_$_StaffImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffImageToJson(
      this,
    );
  }
}

abstract class _StaffImage implements StaffImage {
  const factory _StaffImage(
      {required final String altText,
      required final String description,
      required final int height,
      required final int width,
      required final String src}) = _$_StaffImage;

  factory _StaffImage.fromJson(Map<String, dynamic> json) =
      _$_StaffImage.fromJson;

  @override
  String get altText;
  @override
  String get description;
  @override
  int get height;
  @override
  int get width;
  @override
  String get src;
  @override
  @JsonKey(ignore: true)
  _$$_StaffImageCopyWith<_$_StaffImage> get copyWith =>
      throw _privateConstructorUsedError;
}
