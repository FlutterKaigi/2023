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
  String get logoAssetName => throw _privateConstructorUsedError;
  SponsorPlan get plan => throw _privateConstructorUsedError;
  SponsorSession? get session => throw _privateConstructorUsedError;
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
      String logoAssetName,
      SponsorPlan plan,
      SponsorSession? session,
      String introduction});

  $SponsorSessionCopyWith<$Res>? get session;
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
    Object? logoAssetName = null,
    Object? plan = null,
    Object? session = freezed,
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
      logoAssetName: null == logoAssetName
          ? _value.logoAssetName
          : logoAssetName // ignore: cast_nullable_to_non_nullable
              as String,
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as SponsorPlan,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as SponsorSession?,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SponsorSessionCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $SponsorSessionCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
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
      String logoAssetName,
      SponsorPlan plan,
      SponsorSession? session,
      String introduction});

  @override
  $SponsorSessionCopyWith<$Res>? get session;
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
    Object? logoAssetName = null,
    Object? plan = null,
    Object? session = freezed,
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
      logoAssetName: null == logoAssetName
          ? _value.logoAssetName
          : logoAssetName // ignore: cast_nullable_to_non_nullable
              as String,
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as SponsorPlan,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as SponsorSession?,
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
      required this.logoAssetName,
      required this.plan,
      required this.session,
      this.introduction = ''});

  @override
  final String name;
  @override
  final String displayName;
  @override
  final String url;
  @override
  final String logoAssetName;
  @override
  final SponsorPlan plan;
  @override
  final SponsorSession? session;
  @override
  @JsonKey()
  final String introduction;

  @override
  String toString() {
    return 'Sponsor(name: $name, displayName: $displayName, url: $url, logoAssetName: $logoAssetName, plan: $plan, session: $session, introduction: $introduction)';
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
            (identical(other.logoAssetName, logoAssetName) ||
                other.logoAssetName == logoAssetName) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, displayName, url,
      logoAssetName, plan, session, introduction);

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
      required final String logoAssetName,
      required final SponsorPlan plan,
      required final SponsorSession? session,
      final String introduction}) = _$_Sponsor;

  @override
  String get name;
  @override
  String get displayName;
  @override
  String get url;
  @override
  String get logoAssetName;
  @override
  SponsorPlan get plan;
  @override
  SponsorSession? get session;
  @override
  String get introduction;
  @override
  @JsonKey(ignore: true)
  _$$_SponsorCopyWith<_$_Sponsor> get copyWith =>
      throw _privateConstructorUsedError;
}
