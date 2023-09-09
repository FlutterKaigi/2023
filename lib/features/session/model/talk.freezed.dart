// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'talk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Talk {
  String get id => throw _privateConstructorUsedError;
  int get trackId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  TalkUser get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TalkCopyWith<Talk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalkCopyWith<$Res> {
  factory $TalkCopyWith(Talk value, $Res Function(Talk) then) =
      _$TalkCopyWithImpl<$Res, Talk>;
  @useResult
  $Res call({String id, int trackId, String title, TalkUser user});

  $TalkUserCopyWith<$Res> get user;
}

/// @nodoc
class _$TalkCopyWithImpl<$Res, $Val extends Talk>
    implements $TalkCopyWith<$Res> {
  _$TalkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? trackId = null,
    Object? title = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trackId: null == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TalkUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TalkUserCopyWith<$Res> get user {
    return $TalkUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TalkCopyWith<$Res> implements $TalkCopyWith<$Res> {
  factory _$$_TalkCopyWith(_$_Talk value, $Res Function(_$_Talk) then) =
      __$$_TalkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int trackId, String title, TalkUser user});

  @override
  $TalkUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_TalkCopyWithImpl<$Res> extends _$TalkCopyWithImpl<$Res, _$_Talk>
    implements _$$_TalkCopyWith<$Res> {
  __$$_TalkCopyWithImpl(_$_Talk _value, $Res Function(_$_Talk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? trackId = null,
    Object? title = null,
    Object? user = null,
  }) {
    return _then(_$_Talk(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trackId: null == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TalkUser,
    ));
  }
}

/// @nodoc

class _$_Talk implements _Talk {
  const _$_Talk(
      {required this.id,
      required this.trackId,
      required this.title,
      required this.user});

  @override
  final String id;
  @override
  final int trackId;
  @override
  final String title;
  @override
  final TalkUser user;

  @override
  String toString() {
    return 'Talk(id: $id, trackId: $trackId, title: $title, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Talk &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, trackId, title, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TalkCopyWith<_$_Talk> get copyWith =>
      __$$_TalkCopyWithImpl<_$_Talk>(this, _$identity);
}

abstract class _Talk implements Talk {
  const factory _Talk(
      {required final String id,
      required final int trackId,
      required final String title,
      required final TalkUser user}) = _$_Talk;

  @override
  String get id;
  @override
  int get trackId;
  @override
  String get title;
  @override
  TalkUser get user;
  @override
  @JsonKey(ignore: true)
  _$$_TalkCopyWith<_$_Talk> get copyWith => throw _privateConstructorUsedError;
}
