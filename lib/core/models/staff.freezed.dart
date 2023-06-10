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

StaffItemModel _$StaffItemModelFromJson(Map<String, dynamic> json) {
  return _StaffItemModel.fromJson(json);
}

/// @nodoc
mixin _$StaffItemModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_sys')
  StaffItemSysModel get sys => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get twitter => throw _privateConstructorUsedError;
  StaffItemImageModel get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffItemModelCopyWith<StaffItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffItemModelCopyWith<$Res> {
  factory $StaffItemModelCopyWith(
          StaffItemModel value, $Res Function(StaffItemModel) then) =
      _$StaffItemModelCopyWithImpl<$Res, StaffItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: '_sys') StaffItemSysModel sys,
      String displayName,
      String twitter,
      StaffItemImageModel image});

  $StaffItemSysModelCopyWith<$Res> get sys;
  $StaffItemImageModelCopyWith<$Res> get image;
}

/// @nodoc
class _$StaffItemModelCopyWithImpl<$Res, $Val extends StaffItemModel>
    implements $StaffItemModelCopyWith<$Res> {
  _$StaffItemModelCopyWithImpl(this._value, this._then);

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
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as StaffItemSysModel,
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
              as StaffItemImageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaffItemSysModelCopyWith<$Res> get sys {
    return $StaffItemSysModelCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StaffItemImageModelCopyWith<$Res> get image {
    return $StaffItemImageModelCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StaffItemModelCopyWith<$Res>
    implements $StaffItemModelCopyWith<$Res> {
  factory _$$_StaffItemModelCopyWith(
          _$_StaffItemModel value, $Res Function(_$_StaffItemModel) then) =
      __$$_StaffItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: '_sys') StaffItemSysModel sys,
      String displayName,
      String twitter,
      StaffItemImageModel image});

  @override
  $StaffItemSysModelCopyWith<$Res> get sys;
  @override
  $StaffItemImageModelCopyWith<$Res> get image;
}

/// @nodoc
class __$$_StaffItemModelCopyWithImpl<$Res>
    extends _$StaffItemModelCopyWithImpl<$Res, _$_StaffItemModel>
    implements _$$_StaffItemModelCopyWith<$Res> {
  __$$_StaffItemModelCopyWithImpl(
      _$_StaffItemModel _value, $Res Function(_$_StaffItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sys = null,
    Object? displayName = null,
    Object? twitter = null,
    Object? image = null,
  }) {
    return _then(_$_StaffItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as StaffItemSysModel,
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
              as StaffItemImageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StaffItemModel implements _StaffItemModel {
  const _$_StaffItemModel(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: '_sys') required this.sys,
      required this.displayName,
      required this.twitter,
      required this.image});

  factory _$_StaffItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_StaffItemModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: '_sys')
  final StaffItemSysModel sys;
  @override
  final String displayName;
  @override
  final String twitter;
  @override
  final StaffItemImageModel image;

  @override
  String toString() {
    return 'StaffItemModel(id: $id, sys: $sys, displayName: $displayName, twitter: $twitter, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sys, displayName, twitter, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffItemModelCopyWith<_$_StaffItemModel> get copyWith =>
      __$$_StaffItemModelCopyWithImpl<_$_StaffItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffItemModelToJson(
      this,
    );
  }
}

abstract class _StaffItemModel implements StaffItemModel {
  const factory _StaffItemModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: '_sys') required final StaffItemSysModel sys,
      required final String displayName,
      required final String twitter,
      required final StaffItemImageModel image}) = _$_StaffItemModel;

  factory _StaffItemModel.fromJson(Map<String, dynamic> json) =
      _$_StaffItemModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: '_sys')
  StaffItemSysModel get sys;
  @override
  String get displayName;
  @override
  String get twitter;
  @override
  StaffItemImageModel get image;
  @override
  @JsonKey(ignore: true)
  _$$_StaffItemModelCopyWith<_$_StaffItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffItemSysModel _$StaffItemSysModelFromJson(Map<String, dynamic> json) {
  return _StaffItemSysModel.fromJson(json);
}

/// @nodoc
mixin _$StaffItemSysModel {
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get customOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffItemSysModelCopyWith<StaffItemSysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffItemSysModelCopyWith<$Res> {
  factory $StaffItemSysModelCopyWith(
          StaffItemSysModel value, $Res Function(StaffItemSysModel) then) =
      _$StaffItemSysModelCopyWithImpl<$Res, StaffItemSysModel>;
  @useResult
  $Res call({DateTime createdAt, DateTime updatedAt, int customOrder});
}

/// @nodoc
class _$StaffItemSysModelCopyWithImpl<$Res, $Val extends StaffItemSysModel>
    implements $StaffItemSysModelCopyWith<$Res> {
  _$StaffItemSysModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_StaffItemSysModelCopyWith<$Res>
    implements $StaffItemSysModelCopyWith<$Res> {
  factory _$$_StaffItemSysModelCopyWith(_$_StaffItemSysModel value,
          $Res Function(_$_StaffItemSysModel) then) =
      __$$_StaffItemSysModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, DateTime updatedAt, int customOrder});
}

/// @nodoc
class __$$_StaffItemSysModelCopyWithImpl<$Res>
    extends _$StaffItemSysModelCopyWithImpl<$Res, _$_StaffItemSysModel>
    implements _$$_StaffItemSysModelCopyWith<$Res> {
  __$$_StaffItemSysModelCopyWithImpl(
      _$_StaffItemSysModel _value, $Res Function(_$_StaffItemSysModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? customOrder = null,
  }) {
    return _then(_$_StaffItemSysModel(
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
class _$_StaffItemSysModel implements _StaffItemSysModel {
  const _$_StaffItemSysModel(
      {required this.createdAt,
      required this.updatedAt,
      required this.customOrder});

  factory _$_StaffItemSysModel.fromJson(Map<String, dynamic> json) =>
      _$$_StaffItemSysModelFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int customOrder;

  @override
  String toString() {
    return 'StaffItemSysModel(createdAt: $createdAt, updatedAt: $updatedAt, customOrder: $customOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffItemSysModel &&
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
  _$$_StaffItemSysModelCopyWith<_$_StaffItemSysModel> get copyWith =>
      __$$_StaffItemSysModelCopyWithImpl<_$_StaffItemSysModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffItemSysModelToJson(
      this,
    );
  }
}

abstract class _StaffItemSysModel implements StaffItemSysModel {
  const factory _StaffItemSysModel(
      {required final DateTime createdAt,
      required final DateTime updatedAt,
      required final int customOrder}) = _$_StaffItemSysModel;

  factory _StaffItemSysModel.fromJson(Map<String, dynamic> json) =
      _$_StaffItemSysModel.fromJson;

  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  int get customOrder;
  @override
  @JsonKey(ignore: true)
  _$$_StaffItemSysModelCopyWith<_$_StaffItemSysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffItemImageModel _$StaffItemImageModelFromJson(Map<String, dynamic> json) {
  return _StaffItemImageModel.fromJson(json);
}

/// @nodoc
mixin _$StaffItemImageModel {
  String get altText => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  String get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffItemImageModelCopyWith<StaffItemImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffItemImageModelCopyWith<$Res> {
  factory $StaffItemImageModelCopyWith(
          StaffItemImageModel value, $Res Function(StaffItemImageModel) then) =
      _$StaffItemImageModelCopyWithImpl<$Res, StaffItemImageModel>;
  @useResult
  $Res call(
      {String altText, String description, int height, int width, String src});
}

/// @nodoc
class _$StaffItemImageModelCopyWithImpl<$Res, $Val extends StaffItemImageModel>
    implements $StaffItemImageModelCopyWith<$Res> {
  _$StaffItemImageModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_StaffItemImageModelCopyWith<$Res>
    implements $StaffItemImageModelCopyWith<$Res> {
  factory _$$_StaffItemImageModelCopyWith(_$_StaffItemImageModel value,
          $Res Function(_$_StaffItemImageModel) then) =
      __$$_StaffItemImageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String altText, String description, int height, int width, String src});
}

/// @nodoc
class __$$_StaffItemImageModelCopyWithImpl<$Res>
    extends _$StaffItemImageModelCopyWithImpl<$Res, _$_StaffItemImageModel>
    implements _$$_StaffItemImageModelCopyWith<$Res> {
  __$$_StaffItemImageModelCopyWithImpl(_$_StaffItemImageModel _value,
      $Res Function(_$_StaffItemImageModel) _then)
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
    return _then(_$_StaffItemImageModel(
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
class _$_StaffItemImageModel implements _StaffItemImageModel {
  const _$_StaffItemImageModel(
      {required this.altText,
      required this.description,
      required this.height,
      required this.width,
      required this.src});

  factory _$_StaffItemImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_StaffItemImageModelFromJson(json);

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
    return 'StaffItemImageModel(altText: $altText, description: $description, height: $height, width: $width, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffItemImageModel &&
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
  _$$_StaffItemImageModelCopyWith<_$_StaffItemImageModel> get copyWith =>
      __$$_StaffItemImageModelCopyWithImpl<_$_StaffItemImageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffItemImageModelToJson(
      this,
    );
  }
}

abstract class _StaffItemImageModel implements StaffItemImageModel {
  const factory _StaffItemImageModel(
      {required final String altText,
      required final String description,
      required final int height,
      required final int width,
      required final String src}) = _$_StaffItemImageModel;

  factory _StaffItemImageModel.fromJson(Map<String, dynamic> json) =
      _$_StaffItemImageModel.fromJson;

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
  _$$_StaffItemImageModelCopyWith<_$_StaffItemImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
