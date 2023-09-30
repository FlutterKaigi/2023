// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speaker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Speaker _$SpeakerFromJson(Map<String, dynamic> json) {
  return _Speaker.fromJson(json);
}

/// @nodoc
mixin _$Speaker {
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeakerCopyWith<Speaker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerCopyWith<$Res> {
  factory $SpeakerCopyWith(Speaker value, $Res Function(Speaker) then) =
      _$SpeakerCopyWithImpl<$Res, Speaker>;
  @useResult
  $Res call({String name, String avatarUrl, String? twitter});
}

/// @nodoc
class _$SpeakerCopyWithImpl<$Res, $Val extends Speaker>
    implements $SpeakerCopyWith<$Res> {
  _$SpeakerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? twitter = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpeakerCopyWith<$Res> implements $SpeakerCopyWith<$Res> {
  factory _$$_SpeakerCopyWith(
          _$_Speaker value, $Res Function(_$_Speaker) then) =
      __$$_SpeakerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String avatarUrl, String? twitter});
}

/// @nodoc
class __$$_SpeakerCopyWithImpl<$Res>
    extends _$SpeakerCopyWithImpl<$Res, _$_Speaker>
    implements _$$_SpeakerCopyWith<$Res> {
  __$$_SpeakerCopyWithImpl(_$_Speaker _value, $Res Function(_$_Speaker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? twitter = freezed,
  }) {
    return _then(_$_Speaker(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Speaker implements _Speaker {
  const _$_Speaker({required this.name, required this.avatarUrl, this.twitter});

  factory _$_Speaker.fromJson(Map<String, dynamic> json) =>
      _$$_SpeakerFromJson(json);

  @override
  final String name;
  @override
  final String avatarUrl;
  @override
  final String? twitter;

  @override
  String toString() {
    return 'Speaker(name: $name, avatarUrl: $avatarUrl, twitter: $twitter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Speaker &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.twitter, twitter) || other.twitter == twitter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, avatarUrl, twitter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpeakerCopyWith<_$_Speaker> get copyWith =>
      __$$_SpeakerCopyWithImpl<_$_Speaker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeakerToJson(
      this,
    );
  }
}

abstract class _Speaker implements Speaker {
  const factory _Speaker(
      {required final String name,
      required final String avatarUrl,
      final String? twitter}) = _$_Speaker;

  factory _Speaker.fromJson(Map<String, dynamic> json) = _$_Speaker.fromJson;

  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  String? get twitter;
  @override
  @JsonKey(ignore: true)
  _$$_SpeakerCopyWith<_$_Speaker> get copyWith =>
      throw _privateConstructorUsedError;
}
