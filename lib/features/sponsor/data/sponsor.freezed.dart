// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Sponsor {
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<SponsorSession> get sessions => throw _privateConstructorUsedError;
  String get introduction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SponsorCopyWith<Sponsor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorCopyWith<$Res> {
  factory $SponsorCopyWith(Sponsor value, $Res Function(Sponsor) then) =
      _$SponsorCopyWithImpl<$Res, Sponsor>;
  @useResult
  $Res call(
      {String name,
      String displayName,
      String url,
      List<SponsorSession> sessions,
      String introduction});
}

/// @nodoc
class _$SponsorCopyWithImpl<$Res, $Val extends Sponsor>
    implements $SponsorCopyWith<$Res> {
  _$SponsorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? url = null,
    Object? sessions = null,
    Object? introduction = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SponsorSession>,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SponsorCopyWith<$Res> implements $SponsorCopyWith<$Res> {
  factory _$$_SponsorCopyWith(
          _$_Sponsor value, $Res Function(_$_Sponsor) then) =
      __$$_SponsorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String displayName,
      String url,
      List<SponsorSession> sessions,
      String introduction});
}

/// @nodoc
class __$$_SponsorCopyWithImpl<$Res>
    extends _$SponsorCopyWithImpl<$Res, _$_Sponsor>
    implements _$$_SponsorCopyWith<$Res> {
  __$$_SponsorCopyWithImpl(_$_Sponsor _value, $Res Function(_$_Sponsor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? url = null,
    Object? sessions = null,
    Object? introduction = null,
  }) {
    return _then(_$_Sponsor(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SponsorSession>,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Sponsor implements _Sponsor {
  const _$_Sponsor(
      {required this.name,
      required this.displayName,
      required this.url,
      required final List<SponsorSession> sessions,
      this.introduction = ''})
      : _sessions = sessions;

  @override
  final String name;
  @override
  final String displayName;
  @override
  final String url;
  final List<SponsorSession> _sessions;
  @override
  List<SponsorSession> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  @JsonKey()
  final String introduction;

  @override
  String toString() {
    return 'Sponsor(name: $name, displayName: $displayName, url: $url, sessions: $sessions, introduction: $introduction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sponsor &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, displayName, url,
      const DeepCollectionEquality().hash(_sessions), introduction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SponsorCopyWith<_$_Sponsor> get copyWith =>
      __$$_SponsorCopyWithImpl<_$_Sponsor>(this, _$identity);
}

abstract class _Sponsor implements Sponsor {
  const factory _Sponsor(
      {required final String name,
      required final String displayName,
      required final String url,
      required final List<SponsorSession> sessions,
      final String introduction}) = _$_Sponsor;

  @override
  String get name;
  @override
  String get displayName;
  @override
  String get url;
  @override
  List<SponsorSession> get sessions;
  @override
  String get introduction;
  @override
  @JsonKey(ignore: true)
  _$$_SponsorCopyWith<_$_Sponsor> get copyWith =>
      throw _privateConstructorUsedError;
}
