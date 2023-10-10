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

Session _$SessionFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'timeslot':
      return TimeslotSession.fromJson(json);
    case 'talk':
      return TalkSession.fromJson(json);
    case 'lunch':
      return LunchSession.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Session', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Session {
  DateTime get startsAt => throw _privateConstructorUsedError;
  int get lengthMin => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)
        timeslot,
    required TResult Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)
        talk,
    required TResult Function(DateTime startsAt, int lengthMin) lunch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)?
        timeslot,
    TResult? Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)?
        talk,
    TResult? Function(DateTime startsAt, int lengthMin)? lunch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)?
        timeslot,
    TResult Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)?
        talk,
    TResult Function(DateTime startsAt, int lengthMin)? lunch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeslotSession value) timeslot,
    required TResult Function(TalkSession value) talk,
    required TResult Function(LunchSession value) lunch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeslotSession value)? timeslot,
    TResult? Function(TalkSession value)? talk,
    TResult? Function(LunchSession value)? lunch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeslotSession value)? timeslot,
    TResult Function(TalkSession value)? talk,
    TResult Function(LunchSession value)? lunch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call({DateTime startsAt, int lengthMin});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsAt = null,
    Object? lengthMin = null,
  }) {
    return _then(_value.copyWith(
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lengthMin: null == lengthMin
          ? _value.lengthMin
          : lengthMin // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeslotSessionCopyWith<$Res>
    implements $SessionCopyWith<$Res> {
  factory _$$TimeslotSessionCopyWith(
          _$TimeslotSession value, $Res Function(_$TimeslotSession) then) =
      __$$TimeslotSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String title,
      DateTime startsAt,
      int lengthMin,
      Track track,
      String? abstract,
      Speaker? speaker});

  $TrackCopyWith<$Res> get track;
  $SpeakerCopyWith<$Res>? get speaker;
}

/// @nodoc
class __$$TimeslotSessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$TimeslotSession>
    implements _$$TimeslotSessionCopyWith<$Res> {
  __$$TimeslotSessionCopyWithImpl(
      _$TimeslotSession _value, $Res Function(_$TimeslotSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? startsAt = null,
    Object? lengthMin = null,
    Object? track = null,
    Object? abstract = freezed,
    Object? speaker = freezed,
  }) {
    return _then(_$TimeslotSession(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lengthMin: null == lengthMin
          ? _value.lengthMin
          : lengthMin // ignore: cast_nullable_to_non_nullable
              as int,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      speaker: freezed == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeakerCopyWith<$Res>? get speaker {
    if (_value.speaker == null) {
      return null;
    }

    return $SpeakerCopyWith<$Res>(_value.speaker!, (value) {
      return _then(_value.copyWith(speaker: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TimeslotSession implements TimeslotSession {
  const _$TimeslotSession(
      {required this.uuid,
      required this.title,
      required this.startsAt,
      required this.lengthMin,
      required this.track,
      this.abstract,
      this.speaker,
      final String? $type})
      : $type = $type ?? 'timeslot';

  factory _$TimeslotSession.fromJson(Map<String, dynamic> json) =>
      _$$TimeslotSessionFromJson(json);

  @override
  final String uuid;
  @override
  final String title;
  @override
  final DateTime startsAt;
  @override
  final int lengthMin;
  @override
  final Track track;
  @override
  final String? abstract;
  @override
  final Speaker? speaker;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Session.timeslot(uuid: $uuid, title: $title, startsAt: $startsAt, lengthMin: $lengthMin, track: $track, abstract: $abstract, speaker: $speaker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeslotSession &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.lengthMin, lengthMin) ||
                other.lengthMin == lengthMin) &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            (identical(other.speaker, speaker) || other.speaker == speaker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, title, startsAt, lengthMin, track, abstract, speaker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeslotSessionCopyWith<_$TimeslotSession> get copyWith =>
      __$$TimeslotSessionCopyWithImpl<_$TimeslotSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)
        timeslot,
    required TResult Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)
        talk,
    required TResult Function(DateTime startsAt, int lengthMin) lunch,
  }) {
    return timeslot(uuid, title, startsAt, lengthMin, track, abstract, speaker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)?
        timeslot,
    TResult? Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)?
        talk,
    TResult? Function(DateTime startsAt, int lengthMin)? lunch,
  }) {
    return timeslot?.call(
        uuid, title, startsAt, lengthMin, track, abstract, speaker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)?
        timeslot,
    TResult Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)?
        talk,
    TResult Function(DateTime startsAt, int lengthMin)? lunch,
    required TResult orElse(),
  }) {
    if (timeslot != null) {
      return timeslot(
          uuid, title, startsAt, lengthMin, track, abstract, speaker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeslotSession value) timeslot,
    required TResult Function(TalkSession value) talk,
    required TResult Function(LunchSession value) lunch,
  }) {
    return timeslot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeslotSession value)? timeslot,
    TResult? Function(TalkSession value)? talk,
    TResult? Function(LunchSession value)? lunch,
  }) {
    return timeslot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeslotSession value)? timeslot,
    TResult Function(TalkSession value)? talk,
    TResult Function(LunchSession value)? lunch,
    required TResult orElse(),
  }) {
    if (timeslot != null) {
      return timeslot(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeslotSessionToJson(
      this,
    );
  }
}

abstract class TimeslotSession implements Session {
  const factory TimeslotSession(
      {required final String uuid,
      required final String title,
      required final DateTime startsAt,
      required final int lengthMin,
      required final Track track,
      final String? abstract,
      final Speaker? speaker}) = _$TimeslotSession;

  factory TimeslotSession.fromJson(Map<String, dynamic> json) =
      _$TimeslotSession.fromJson;

  String get uuid;
  String get title;
  @override
  DateTime get startsAt;
  @override
  int get lengthMin;
  Track get track;
  String? get abstract;
  Speaker? get speaker;
  @override
  @JsonKey(ignore: true)
  _$$TimeslotSessionCopyWith<_$TimeslotSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TalkSessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$TalkSessionCopyWith(
          _$TalkSession value, $Res Function(_$TalkSession) then) =
      __$$TalkSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String url,
      String title,
      String abstract,
      Track track,
      DateTime startsAt,
      int lengthMin,
      List<Tag> tags,
      Speaker speaker});

  $TrackCopyWith<$Res> get track;
  $SpeakerCopyWith<$Res> get speaker;
}

/// @nodoc
class __$$TalkSessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$TalkSession>
    implements _$$TalkSessionCopyWith<$Res> {
  __$$TalkSessionCopyWithImpl(
      _$TalkSession _value, $Res Function(_$TalkSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? url = null,
    Object? title = null,
    Object? abstract = null,
    Object? track = null,
    Object? startsAt = null,
    Object? lengthMin = null,
    Object? tags = null,
    Object? speaker = null,
  }) {
    return _then(_$TalkSession(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: null == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lengthMin: null == lengthMin
          ? _value.lengthMin
          : lengthMin // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeakerCopyWith<$Res> get speaker {
    return $SpeakerCopyWith<$Res>(_value.speaker, (value) {
      return _then(_value.copyWith(speaker: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TalkSession implements TalkSession {
  const _$TalkSession(
      {required this.uuid,
      required this.url,
      required this.title,
      required this.abstract,
      required this.track,
      required this.startsAt,
      required this.lengthMin,
      required final List<Tag> tags,
      required this.speaker,
      final String? $type})
      : _tags = tags,
        $type = $type ?? 'talk';

  factory _$TalkSession.fromJson(Map<String, dynamic> json) =>
      _$$TalkSessionFromJson(json);

  @override
  final String uuid;
  @override
  final String url;
  @override
  final String title;
  @override
  final String abstract;
  @override
  final Track track;
  @override
  final DateTime startsAt;
  @override
  final int lengthMin;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final Speaker speaker;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Session.talk(uuid: $uuid, url: $url, title: $title, abstract: $abstract, track: $track, startsAt: $startsAt, lengthMin: $lengthMin, tags: $tags, speaker: $speaker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TalkSession &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.lengthMin, lengthMin) ||
                other.lengthMin == lengthMin) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.speaker, speaker) || other.speaker == speaker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      url,
      title,
      abstract,
      track,
      startsAt,
      lengthMin,
      const DeepCollectionEquality().hash(_tags),
      speaker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TalkSessionCopyWith<_$TalkSession> get copyWith =>
      __$$TalkSessionCopyWithImpl<_$TalkSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)
        timeslot,
    required TResult Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)
        talk,
    required TResult Function(DateTime startsAt, int lengthMin) lunch,
  }) {
    return talk(
        uuid, url, title, abstract, track, startsAt, lengthMin, tags, speaker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)?
        timeslot,
    TResult? Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)?
        talk,
    TResult? Function(DateTime startsAt, int lengthMin)? lunch,
  }) {
    return talk?.call(
        uuid, url, title, abstract, track, startsAt, lengthMin, tags, speaker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)?
        timeslot,
    TResult Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)?
        talk,
    TResult Function(DateTime startsAt, int lengthMin)? lunch,
    required TResult orElse(),
  }) {
    if (talk != null) {
      return talk(uuid, url, title, abstract, track, startsAt, lengthMin, tags,
          speaker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeslotSession value) timeslot,
    required TResult Function(TalkSession value) talk,
    required TResult Function(LunchSession value) lunch,
  }) {
    return talk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeslotSession value)? timeslot,
    TResult? Function(TalkSession value)? talk,
    TResult? Function(LunchSession value)? lunch,
  }) {
    return talk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeslotSession value)? timeslot,
    TResult Function(TalkSession value)? talk,
    TResult Function(LunchSession value)? lunch,
    required TResult orElse(),
  }) {
    if (talk != null) {
      return talk(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TalkSessionToJson(
      this,
    );
  }
}

abstract class TalkSession implements Session {
  const factory TalkSession(
      {required final String uuid,
      required final String url,
      required final String title,
      required final String abstract,
      required final Track track,
      required final DateTime startsAt,
      required final int lengthMin,
      required final List<Tag> tags,
      required final Speaker speaker}) = _$TalkSession;

  factory TalkSession.fromJson(Map<String, dynamic> json) =
      _$TalkSession.fromJson;

  String get uuid;
  String get url;
  String get title;
  String get abstract;
  Track get track;
  @override
  DateTime get startsAt;
  @override
  int get lengthMin;
  List<Tag> get tags;
  Speaker get speaker;
  @override
  @JsonKey(ignore: true)
  _$$TalkSessionCopyWith<_$TalkSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LunchSessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$LunchSessionCopyWith(
          _$LunchSession value, $Res Function(_$LunchSession) then) =
      __$$LunchSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startsAt, int lengthMin});
}

/// @nodoc
class __$$LunchSessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$LunchSession>
    implements _$$LunchSessionCopyWith<$Res> {
  __$$LunchSessionCopyWithImpl(
      _$LunchSession _value, $Res Function(_$LunchSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startsAt = null,
    Object? lengthMin = null,
  }) {
    return _then(_$LunchSession(
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lengthMin: null == lengthMin
          ? _value.lengthMin
          : lengthMin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LunchSession implements LunchSession {
  const _$LunchSession(
      {required this.startsAt, required this.lengthMin, final String? $type})
      : $type = $type ?? 'lunch';

  factory _$LunchSession.fromJson(Map<String, dynamic> json) =>
      _$$LunchSessionFromJson(json);

  @override
  final DateTime startsAt;
  @override
  final int lengthMin;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Session.lunch(startsAt: $startsAt, lengthMin: $lengthMin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LunchSession &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.lengthMin, lengthMin) ||
                other.lengthMin == lengthMin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startsAt, lengthMin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LunchSessionCopyWith<_$LunchSession> get copyWith =>
      __$$LunchSessionCopyWithImpl<_$LunchSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)
        timeslot,
    required TResult Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)
        talk,
    required TResult Function(DateTime startsAt, int lengthMin) lunch,
  }) {
    return lunch(startsAt, lengthMin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)?
        timeslot,
    TResult? Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)?
        talk,
    TResult? Function(DateTime startsAt, int lengthMin)? lunch,
  }) {
    return lunch?.call(startsAt, lengthMin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String title, DateTime startsAt,
            int lengthMin, Track track, String? abstract, Speaker? speaker)?
        timeslot,
    TResult Function(
            String uuid,
            String url,
            String title,
            String abstract,
            Track track,
            DateTime startsAt,
            int lengthMin,
            List<Tag> tags,
            Speaker speaker)?
        talk,
    TResult Function(DateTime startsAt, int lengthMin)? lunch,
    required TResult orElse(),
  }) {
    if (lunch != null) {
      return lunch(startsAt, lengthMin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeslotSession value) timeslot,
    required TResult Function(TalkSession value) talk,
    required TResult Function(LunchSession value) lunch,
  }) {
    return lunch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeslotSession value)? timeslot,
    TResult? Function(TalkSession value)? talk,
    TResult? Function(LunchSession value)? lunch,
  }) {
    return lunch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeslotSession value)? timeslot,
    TResult Function(TalkSession value)? talk,
    TResult Function(LunchSession value)? lunch,
    required TResult orElse(),
  }) {
    if (lunch != null) {
      return lunch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LunchSessionToJson(
      this,
    );
  }
}

abstract class LunchSession implements Session {
  const factory LunchSession(
      {required final DateTime startsAt,
      required final int lengthMin}) = _$LunchSession;

  factory LunchSession.fromJson(Map<String, dynamic> json) =
      _$LunchSession.fromJson;

  @override
  DateTime get startsAt;
  @override
  int get lengthMin;
  @override
  @JsonKey(ignore: true)
  _$$LunchSessionCopyWith<_$LunchSession> get copyWith =>
      throw _privateConstructorUsedError;
}
