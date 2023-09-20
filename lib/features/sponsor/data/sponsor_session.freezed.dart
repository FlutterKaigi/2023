// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SponsorSession {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get scheduledAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SponsorSessionCopyWith<SponsorSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorSessionCopyWith<$Res> {
  factory $SponsorSessionCopyWith(
          SponsorSession value, $Res Function(SponsorSession) then) =
      _$SponsorSessionCopyWithImpl<$Res, SponsorSession>;
  @useResult
  $Res call({String id, String title, String url, String scheduledAt});
}

/// @nodoc
class _$SponsorSessionCopyWithImpl<$Res, $Val extends SponsorSession>
    implements $SponsorSessionCopyWith<$Res> {
  _$SponsorSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? scheduledAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SponsorSessionCopyWith<$Res>
    implements $SponsorSessionCopyWith<$Res> {
  factory _$$_SponsorSessionCopyWith(
          _$_SponsorSession value, $Res Function(_$_SponsorSession) then) =
      __$$_SponsorSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String url, String scheduledAt});
}

/// @nodoc
class __$$_SponsorSessionCopyWithImpl<$Res>
    extends _$SponsorSessionCopyWithImpl<$Res, _$_SponsorSession>
    implements _$$_SponsorSessionCopyWith<$Res> {
  __$$_SponsorSessionCopyWithImpl(
      _$_SponsorSession _value, $Res Function(_$_SponsorSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? scheduledAt = null,
  }) {
    return _then(_$_SponsorSession(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SponsorSession implements _SponsorSession {
  const _$_SponsorSession(
      {required this.id,
      required this.title,
      required this.url,
      required this.scheduledAt});

  @override
  final String id;
  @override
  final String title;
  @override
  final String url;
  @override
  final String scheduledAt;

  @override
  String toString() {
    return 'SponsorSession(id: $id, title: $title, url: $url, scheduledAt: $scheduledAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SponsorSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, url, scheduledAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SponsorSessionCopyWith<_$_SponsorSession> get copyWith =>
      __$$_SponsorSessionCopyWithImpl<_$_SponsorSession>(this, _$identity);
}

abstract class _SponsorSession implements SponsorSession {
  const factory _SponsorSession(
      {required final String id,
      required final String title,
      required final String url,
      required final String scheduledAt}) = _$_SponsorSession;

  @override
  String get id;
  @override
  String get title;
  @override
  String get url;
  @override
  String get scheduledAt;
  @override
  @JsonKey(ignore: true)
  _$$_SponsorSessionCopyWith<_$_SponsorSession> get copyWith =>
      throw _privateConstructorUsedError;
}
