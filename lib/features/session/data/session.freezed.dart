// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Session {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, DateTime startsAt, DateTime endsAt)
        organizer,
    required TResult Function(
            List<Talk> talks, DateTime startsAt, DateTime endsAt)
        talks,
    required TResult Function() lunch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime startsAt, DateTime endsAt)?
        organizer,
    TResult? Function(List<Talk> talks, DateTime startsAt, DateTime endsAt)?
        talks,
    TResult? Function()? lunch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startsAt, DateTime endsAt)?
        organizer,
    TResult Function(List<Talk> talks, DateTime startsAt, DateTime endsAt)?
        talks,
    TResult Function()? lunch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrganizerSession value) organizer,
    required TResult Function(TalksSession value) talks,
    required TResult Function(LunchSession value) lunch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrganizerSession value)? organizer,
    TResult? Function(TalksSession value)? talks,
    TResult? Function(LunchSession value)? lunch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrganizerSession value)? organizer,
    TResult Function(TalksSession value)? talks,
    TResult Function(LunchSession value)? lunch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrganizerSessionCopyWith<$Res> {
  factory _$$OrganizerSessionCopyWith(
          _$OrganizerSession value, $Res Function(_$OrganizerSession) then) =
      __$$OrganizerSessionCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, DateTime startsAt, DateTime endsAt});
}

/// @nodoc
class __$$OrganizerSessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$OrganizerSession>
    implements _$$OrganizerSessionCopyWith<$Res> {
  __$$OrganizerSessionCopyWithImpl(
      _$OrganizerSession _value, $Res Function(_$OrganizerSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? startsAt = null,
    Object? endsAt = null,
  }) {
    return _then(_$OrganizerSession(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$OrganizerSession implements OrganizerSession {
  const _$OrganizerSession(
      {required this.title, required this.startsAt, required this.endsAt});

  @override
  final String title;
  @override
  final DateTime startsAt;
  @override
  final DateTime endsAt;

  @override
  String toString() {
    return 'Session.organizer(title: $title, startsAt: $startsAt, endsAt: $endsAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizerSession &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, startsAt, endsAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizerSessionCopyWith<_$OrganizerSession> get copyWith =>
      __$$OrganizerSessionCopyWithImpl<_$OrganizerSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, DateTime startsAt, DateTime endsAt)
        organizer,
    required TResult Function(
            List<Talk> talks, DateTime startsAt, DateTime endsAt)
        talks,
    required TResult Function() lunch,
  }) {
    return organizer(title, startsAt, endsAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime startsAt, DateTime endsAt)?
        organizer,
    TResult? Function(List<Talk> talks, DateTime startsAt, DateTime endsAt)?
        talks,
    TResult? Function()? lunch,
  }) {
    return organizer?.call(title, startsAt, endsAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startsAt, DateTime endsAt)?
        organizer,
    TResult Function(List<Talk> talks, DateTime startsAt, DateTime endsAt)?
        talks,
    TResult Function()? lunch,
    required TResult orElse(),
  }) {
    if (organizer != null) {
      return organizer(title, startsAt, endsAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrganizerSession value) organizer,
    required TResult Function(TalksSession value) talks,
    required TResult Function(LunchSession value) lunch,
  }) {
    return organizer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrganizerSession value)? organizer,
    TResult? Function(TalksSession value)? talks,
    TResult? Function(LunchSession value)? lunch,
  }) {
    return organizer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrganizerSession value)? organizer,
    TResult Function(TalksSession value)? talks,
    TResult Function(LunchSession value)? lunch,
    required TResult orElse(),
  }) {
    if (organizer != null) {
      return organizer(this);
    }
    return orElse();
  }
}

abstract class OrganizerSession implements Session {
  const factory OrganizerSession(
      {required final String title,
      required final DateTime startsAt,
      required final DateTime endsAt}) = _$OrganizerSession;

  String get title;
  DateTime get startsAt;
  DateTime get endsAt;
  @JsonKey(ignore: true)
  _$$OrganizerSessionCopyWith<_$OrganizerSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TalksSessionCopyWith<$Res> {
  factory _$$TalksSessionCopyWith(
          _$TalksSession value, $Res Function(_$TalksSession) then) =
      __$$TalksSessionCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Talk> talks, DateTime startsAt, DateTime endsAt});
}

/// @nodoc
class __$$TalksSessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$TalksSession>
    implements _$$TalksSessionCopyWith<$Res> {
  __$$TalksSessionCopyWithImpl(
      _$TalksSession _value, $Res Function(_$TalksSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? talks = null,
    Object? startsAt = null,
    Object? endsAt = null,
  }) {
    return _then(_$TalksSession(
      talks: null == talks
          ? _value._talks
          : talks // ignore: cast_nullable_to_non_nullable
              as List<Talk>,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TalksSession implements TalksSession {
  const _$TalksSession(
      {required final List<Talk> talks,
      required this.startsAt,
      required this.endsAt})
      : _talks = talks;

  final List<Talk> _talks;
  @override
  List<Talk> get talks {
    if (_talks is EqualUnmodifiableListView) return _talks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talks);
  }

  @override
  final DateTime startsAt;
  @override
  final DateTime endsAt;

  @override
  String toString() {
    return 'Session.talks(talks: $talks, startsAt: $startsAt, endsAt: $endsAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TalksSession &&
            const DeepCollectionEquality().equals(other._talks, _talks) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_talks), startsAt, endsAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TalksSessionCopyWith<_$TalksSession> get copyWith =>
      __$$TalksSessionCopyWithImpl<_$TalksSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, DateTime startsAt, DateTime endsAt)
        organizer,
    required TResult Function(
            List<Talk> talks, DateTime startsAt, DateTime endsAt)
        talks,
    required TResult Function() lunch,
  }) {
    return talks(this.talks, startsAt, endsAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime startsAt, DateTime endsAt)?
        organizer,
    TResult? Function(List<Talk> talks, DateTime startsAt, DateTime endsAt)?
        talks,
    TResult? Function()? lunch,
  }) {
    return talks?.call(this.talks, startsAt, endsAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startsAt, DateTime endsAt)?
        organizer,
    TResult Function(List<Talk> talks, DateTime startsAt, DateTime endsAt)?
        talks,
    TResult Function()? lunch,
    required TResult orElse(),
  }) {
    if (talks != null) {
      return talks(this.talks, startsAt, endsAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrganizerSession value) organizer,
    required TResult Function(TalksSession value) talks,
    required TResult Function(LunchSession value) lunch,
  }) {
    return talks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrganizerSession value)? organizer,
    TResult? Function(TalksSession value)? talks,
    TResult? Function(LunchSession value)? lunch,
  }) {
    return talks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrganizerSession value)? organizer,
    TResult Function(TalksSession value)? talks,
    TResult Function(LunchSession value)? lunch,
    required TResult orElse(),
  }) {
    if (talks != null) {
      return talks(this);
    }
    return orElse();
  }
}

abstract class TalksSession implements Session {
  const factory TalksSession(
      {required final List<Talk> talks,
      required final DateTime startsAt,
      required final DateTime endsAt}) = _$TalksSession;

  List<Talk> get talks;
  DateTime get startsAt;
  DateTime get endsAt;
  @JsonKey(ignore: true)
  _$$TalksSessionCopyWith<_$TalksSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LunchSessionCopyWith<$Res> {
  factory _$$LunchSessionCopyWith(
          _$LunchSession value, $Res Function(_$LunchSession) then) =
      __$$LunchSessionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LunchSessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$LunchSession>
    implements _$$LunchSessionCopyWith<$Res> {
  __$$LunchSessionCopyWithImpl(
      _$LunchSession _value, $Res Function(_$LunchSession) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LunchSession implements LunchSession {
  const _$LunchSession();

  @override
  String toString() {
    return 'Session.lunch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LunchSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, DateTime startsAt, DateTime endsAt)
        organizer,
    required TResult Function(
            List<Talk> talks, DateTime startsAt, DateTime endsAt)
        talks,
    required TResult Function() lunch,
  }) {
    return lunch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime startsAt, DateTime endsAt)?
        organizer,
    TResult? Function(List<Talk> talks, DateTime startsAt, DateTime endsAt)?
        talks,
    TResult? Function()? lunch,
  }) {
    return lunch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startsAt, DateTime endsAt)?
        organizer,
    TResult Function(List<Talk> talks, DateTime startsAt, DateTime endsAt)?
        talks,
    TResult Function()? lunch,
    required TResult orElse(),
  }) {
    if (lunch != null) {
      return lunch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrganizerSession value) organizer,
    required TResult Function(TalksSession value) talks,
    required TResult Function(LunchSession value) lunch,
  }) {
    return lunch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrganizerSession value)? organizer,
    TResult? Function(TalksSession value)? talks,
    TResult? Function(LunchSession value)? lunch,
  }) {
    return lunch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrganizerSession value)? organizer,
    TResult Function(TalksSession value)? talks,
    TResult Function(LunchSession value)? lunch,
    required TResult orElse(),
  }) {
    if (lunch != null) {
      return lunch(this);
    }
    return orElse();
  }
}

abstract class LunchSession implements Session {
  const factory LunchSession() = _$LunchSession;
}
