// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'talk_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TalkUser {
  String get name => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TalkUserCopyWith<TalkUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalkUserCopyWith<$Res> {
  factory $TalkUserCopyWith(TalkUser value, $Res Function(TalkUser) then) =
      _$TalkUserCopyWithImpl<$Res, TalkUser>;
  @useResult
  $Res call({String name, String thumbnailUrl});
}

/// @nodoc
class _$TalkUserCopyWithImpl<$Res, $Val extends TalkUser>
    implements $TalkUserCopyWith<$Res> {
  _$TalkUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TalkUserCopyWith<$Res> implements $TalkUserCopyWith<$Res> {
  factory _$$_TalkUserCopyWith(
          _$_TalkUser value, $Res Function(_$_TalkUser) then) =
      __$$_TalkUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String thumbnailUrl});
}

/// @nodoc
class __$$_TalkUserCopyWithImpl<$Res>
    extends _$TalkUserCopyWithImpl<$Res, _$_TalkUser>
    implements _$$_TalkUserCopyWith<$Res> {
  __$$_TalkUserCopyWithImpl(
      _$_TalkUser _value, $Res Function(_$_TalkUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$_TalkUser(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TalkUser implements _TalkUser {
  const _$_TalkUser({required this.name, required this.thumbnailUrl});

  @override
  final String name;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'TalkUser(name: $name, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TalkUser &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TalkUserCopyWith<_$_TalkUser> get copyWith =>
      __$$_TalkUserCopyWithImpl<_$_TalkUser>(this, _$identity);
}

abstract class _TalkUser implements TalkUser {
  const factory _TalkUser(
      {required final String name,
      required final String thumbnailUrl}) = _$_TalkUser;

  @override
  String get name;
  @override
  String get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$_TalkUserCopyWith<_$_TalkUser> get copyWith =>
      throw _privateConstructorUsedError;
}
