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
  String get displayName => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;
  List<Sns> get sns => throw _privateConstructorUsedError;
  String get introduction => throw _privateConstructorUsedError;

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
      {String displayName,
      String imageName,
      List<Sns> sns,
      String introduction});
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
    Object? displayName = null,
    Object? imageName = null,
    Object? sns = null,
    Object? introduction = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      sns: null == sns
          ? _value.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as List<Sns>,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$$_StaffCopyWith(_$_Staff value, $Res Function(_$_Staff) then) =
      __$$_StaffCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String displayName,
      String imageName,
      List<Sns> sns,
      String introduction});
}

/// @nodoc
class __$$_StaffCopyWithImpl<$Res> extends _$StaffCopyWithImpl<$Res, _$_Staff>
    implements _$$_StaffCopyWith<$Res> {
  __$$_StaffCopyWithImpl(_$_Staff _value, $Res Function(_$_Staff) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? imageName = null,
    Object? sns = null,
    Object? introduction = null,
  }) {
    return _then(_$_Staff(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      sns: null == sns
          ? _value._sns
          : sns // ignore: cast_nullable_to_non_nullable
              as List<Sns>,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Staff implements _Staff {
  const _$_Staff(
      {required this.displayName,
      required this.imageName,
      required final List<Sns> sns,
      this.introduction = ''})
      : _sns = sns;

  factory _$_Staff.fromJson(Map<String, dynamic> json) =>
      _$$_StaffFromJson(json);

  @override
  final String displayName;
  @override
  final String imageName;
  final List<Sns> _sns;
  @override
  List<Sns> get sns {
    if (_sns is EqualUnmodifiableListView) return _sns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sns);
  }

  @override
  @JsonKey()
  final String introduction;

  @override
  String toString() {
    return 'Staff(displayName: $displayName, imageName: $imageName, sns: $sns, introduction: $introduction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Staff &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName) &&
            const DeepCollectionEquality().equals(other._sns, _sns) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, imageName,
      const DeepCollectionEquality().hash(_sns), introduction);

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
      {required final String displayName,
      required final String imageName,
      required final List<Sns> sns,
      final String introduction}) = _$_Staff;

  factory _Staff.fromJson(Map<String, dynamic> json) = _$_Staff.fromJson;

  @override
  String get displayName;
  @override
  String get imageName;
  @override
  List<Sns> get sns;
  @override
  String get introduction;
  @override
  @JsonKey(ignore: true)
  _$$_StaffCopyWith<_$_Staff> get copyWith =>
      throw _privateConstructorUsedError;
}

Sns _$SnsFromJson(Map<String, dynamic> json) {
  return _Sns.fromJson(json);
}

/// @nodoc
mixin _$Sns {
  SnsType get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnsCopyWith<Sns> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnsCopyWith<$Res> {
  factory $SnsCopyWith(Sns value, $Res Function(Sns) then) =
      _$SnsCopyWithImpl<$Res, Sns>;
  @useResult
  $Res call({SnsType type, String value});
}

/// @nodoc
class _$SnsCopyWithImpl<$Res, $Val extends Sns> implements $SnsCopyWith<$Res> {
  _$SnsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnsType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SnsCopyWith<$Res> implements $SnsCopyWith<$Res> {
  factory _$$_SnsCopyWith(_$_Sns value, $Res Function(_$_Sns) then) =
      __$$_SnsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SnsType type, String value});
}

/// @nodoc
class __$$_SnsCopyWithImpl<$Res> extends _$SnsCopyWithImpl<$Res, _$_Sns>
    implements _$$_SnsCopyWith<$Res> {
  __$$_SnsCopyWithImpl(_$_Sns _value, $Res Function(_$_Sns) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$_Sns(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnsType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sns implements _Sns {
  const _$_Sns({required this.type, required this.value});

  factory _$_Sns.fromJson(Map<String, dynamic> json) => _$$_SnsFromJson(json);

  @override
  final SnsType type;
  @override
  final String value;

  @override
  String toString() {
    return 'Sns(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sns &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SnsCopyWith<_$_Sns> get copyWith =>
      __$$_SnsCopyWithImpl<_$_Sns>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnsToJson(
      this,
    );
  }
}

abstract class _Sns implements Sns {
  const factory _Sns(
      {required final SnsType type, required final String value}) = _$_Sns;

  factory _Sns.fromJson(Map<String, dynamic> json) = _$_Sns.fromJson;

  @override
  SnsType get type;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_SnsCopyWith<_$_Sns> get copyWith => throw _privateConstructorUsedError;
}
